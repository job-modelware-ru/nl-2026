# Слайд: Области видимости
# Elixir использует лексическую область видимости.
# Переменные можно повторно связывать (rebinding), но данные остаются неизменяемыми.

IO.puts("=== Rebinding ===")
x = 10
IO.inspect(x, label: "x до rebinding")

x = 20
IO.inspect(x, label: "x после rebinding")

IO.puts("\n=== Лексическая область видимости функции ===")
outside = 100

fun = fn ->
  inside = 200
  IO.inspect(outside, label: "outside внутри функции")
  IO.inspect(inside, label: "inside внутри функции")
end

fun.()
IO.inspect(outside, label: "outside после вызова")

IO.puts("\n=== Значение блока ===")
result =
  if true do
    local_value = 5
    local_value * 2
  end

IO.inspect(result, label: "результат if-блока")

# local_value существует только внутри ветки if и снаружи недоступен.
