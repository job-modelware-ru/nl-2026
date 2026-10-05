# Слайд 10. ExUnit: встроенное тестирование

# doctest берёт примеры из @doc и @moduledoc, а значит ему нужен BEAM-файл модуля.
# В .exs-скрипте модуль существует только в памяти, поэтому мы компилируем
# тестируемый модуль во временный каталог и подключаем его к коду.
beam_dir = Path.join(System.tmp_dir!(), "exunit_demo_beam")
File.rm_rf!(beam_dir)
File.mkdir_p!(beam_dir)

module_path = Path.join(beam_dir, "math_for_test.ex")

File.write!(module_path, """
defmodule MathForTest do
  @moduledoc \"""
  Небольшой модуль для демонстрации ExUnit.

      iex> MathForTest.add(2, 3)
      5
  \"""

  def add(a, b), do: a + b

  def divide(_a, 0), do: raise(ArgumentError, "деление на ноль")
  def divide(a, b), do: a / b
end
""")

Code.compiler_options(docs: true)

_ =
  Kernel.ParallelCompiler.compile_to_path([module_path], beam_dir,
    return_diagnostics: true
  )

Code.prepend_path(beam_dir)

ExUnit.start()

defmodule MathForTestTest do
  use ExUnit.Case, async: true

  doctest MathForTest

  test "сложение чисел" do
    assert MathForTest.add(2, 3) == 5
    refute MathForTest.add(2, 2) == 5
  end

  test "деление на ноль вызывает исключение" do
    assert_raise ArgumentError, "деление на ноль", fn ->
      MathForTest.divide(10, 0)
    end
  end
end