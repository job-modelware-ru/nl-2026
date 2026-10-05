# Слайд 9. Исключения и отладка

defmodule ExceptionDemo do
  def divide(_a, 0), do: raise(ArgumentError, "деление на ноль")
  def divide(a, b), do: a / b
end

try do
  result = ExceptionDemo.divide(10, 0)
  IO.inspect(result, label: "Результат")
rescue
  error in ArgumentError ->
    IO.puts("Перехвачено исключение: #{Exception.message(error)}")
else
  value ->
    IO.inspect(value, label: "Успех")
after
  IO.puts("Блок after выполняется всегда")
end

value = %{user: %{name: "Anna", scores: [90, 85, 100]}}
IO.inspect(value, label: "Отладочный вывод", pretty: true)
