# Слайд: Функции: объявление и вызов
# Функции — значения первого класса.
# Именованные функции объявляются внутри модулей, анонимные — через fn.

defmodule FunctionDemo do
  def greet(name) do
    "Hello, " <> name
  end

  def apply_twice(fun, value) do
    value
    |> fun.()
    |> fun.()
  end
end

IO.puts("=== Именованная функция ===")
IO.puts(FunctionDemo.greet("Elixir"))

IO.puts("\n=== Анонимная функция ===")
double = fn x -> x * 2 end
IO.inspect(double.(21), label: "double.(21)")

IO.puts("\n=== Функция как аргумент ===")
IO.inspect(FunctionDemo.apply_twice(double, 5), label: "double два раза")

IO.puts("\n=== Захват функции ===")
upcase = &String.upcase/1
IO.inspect(upcase.("elixir"), label: "&String.upcase/1")
