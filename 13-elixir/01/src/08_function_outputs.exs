# Слайд: Выходные данные функций
# В Elixir нет отдельного return: результатом функции является последнее выражение.
# Формально функция возвращает одно значение, но этим значением может быть tuple, list, map и т.д.

defmodule OutputDemo do
  def minmax(list) do
    {Enum.min(list), Enum.max(list)}
  end

  def divide(_a, 0) do
    {:error, :division_by_zero}
  end

  def divide(a, b) do
    {:ok, a / b}
  end

  def last_expression(x) do
    doubled = x * 2
    doubled + 1
  end
end

IO.puts("=== Несколько логических результатов через tuple ===")
{lo, hi} = OutputDemo.minmax([3, 1, 4, 1, 5])
IO.inspect(lo, label: "min")
IO.inspect(hi, label: "max")

IO.puts("\n=== Конвенция {:ok, value} / {:error, reason} ===")
IO.inspect(OutputDemo.divide(10, 2), label: "10 / 2")
IO.inspect(OutputDemo.divide(10, 0), label: "10 / 0")

IO.puts("\n=== Последнее выражение — результат функции ===")
IO.inspect(OutputDemo.last_expression(10), label: "last_expression(10)")
