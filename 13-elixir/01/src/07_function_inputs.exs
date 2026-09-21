# Слайд: Входные данные функций
# Арность (число аргументов) — часть имени функции.
# Поддерживаются значения по умолчанию, pattern matching и guards.
# Классических variadic-функций (...) в Elixir нет.

defmodule InputDemo do
  def greet(name \\ "гость") do
    "Привет, " <> name
  end

  def unwrap({:ok, value}) do
    value
  end

  def classify(x) when is_integer(x) and x > 0 do
    :positive_integer
  end

  def classify(x) when is_integer(x) and x < 0 do
    :negative_integer
  end

  def classify(0) do
    :zero
  end

  # Если нужно передать произвольное количество значений,
  # обычно используют список.
  def sum(numbers) when is_list(numbers) do
    Enum.sum(numbers)
  end
end

IO.puts("=== Значение по умолчанию ===")
IO.puts(InputDemo.greet())
IO.puts(InputDemo.greet("Анна"))

IO.puts("\n=== Pattern matching в аргументах ===")
IO.inspect(InputDemo.unwrap({:ok, 42}), label: "unwrap")

IO.puts("\n=== Guards ===")
IO.inspect(InputDemo.classify(10), label: "10")
IO.inspect(InputDemo.classify(-3), label: "-3")
IO.inspect(InputDemo.classify(0), label: "0")

IO.puts("\n=== Набор значений через список ===")
IO.inspect(InputDemo.sum([1, 2, 3, 4, 5]), label: "sum")
