# Слайд: Замыкания
# Анонимная функция запоминает значения из внешней области видимости.
# Захваченные значения неизменяемы: для изменяемого состояния обычно используют процессы.

IO.puts("=== Простое замыкание ===")
make_adder = fn x ->
  fn y -> x + y end
end

add_5 = make_adder.(5)
add_10 = make_adder.(10)

IO.inspect(add_5.(3), label: "add_5.(3)")
IO.inspect(add_10.(3), label: "add_10.(3)")

IO.puts("\n=== Замыкание сохраняет своё окружение ===")
x = 10
plus_x = fn y -> x + y end

x = 100

IO.inspect(x, label: "текущее x")
IO.inspect(plus_x.(1), label: "plus_x.(1)")

IO.puts("\n=== Функция с замыканием в Enum.map ===")
factor = 3
multiply = fn value -> value * factor end

IO.inspect(Enum.map([1, 2, 3], multiply), label: "умножение на 3")

# В отличие от Lua-примера со счётчиком, замыкание в Elixir
# не изменяет захваченную переменную. Для состояния между вызовами
# обычно применяют отдельный BEAM-процесс, Agent или GenServer.
