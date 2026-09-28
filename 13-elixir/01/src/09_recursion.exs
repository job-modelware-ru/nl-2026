# Слайд: Рекурсия
# Рекурсия часто используется вместо изменяемых циклов.
# BEAM оптимизирует хвостовые вызовы.

defmodule RecursionDemo do
  # Обычная рекурсия.
  def fact(0), do: 1
  def fact(n) when n > 0, do: n * fact(n - 1)

  # Хвостовая рекурсия с аккумулятором.
  def fact_tail(n), do: fact_tail(n, 1)

  defp fact_tail(0, acc), do: acc
  defp fact_tail(n, acc), do: fact_tail(n - 1, n * acc)

  # Обход списка через pattern matching.
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

IO.puts("=== Обычная рекурсия ===")
IO.inspect(RecursionDemo.fact(5), label: "fact(5)")

IO.puts("\n=== Хвостовая рекурсия ===")
IO.inspect(RecursionDemo.fact_tail(5), label: "fact_tail(5)")

IO.puts("\n=== Рекурсивный обход списка ===")
IO.inspect(RecursionDemo.sum([1, 2, 3, 4]), label: "sum")
