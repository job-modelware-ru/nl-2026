# Слайд: Владение и передача владения
# Модели ownership, как в Rust, в Elixir нет.
# Значения неизменяемы, память управляется сборщиком мусора BEAM.

defmodule OwnershipDemo do
  def change_number(n) do
    n + 1000
  end

  def change_map(map) do
    %{map | x: 100}
  end
end

IO.puts("=== Значения не изменяются внутри функции ===")
num = 5
changed_num = OwnershipDemo.change_number(num)

IO.inspect(num, label: "исходное число")
IO.inspect(changed_num, label: "новое число")

IO.puts("\n=== Обновление map создаёт новое значение ===")
original = %{x: 1}
changed = OwnershipDemo.change_map(original)

IO.inspect(original, label: "original")
IO.inspect(changed, label: "changed")

IO.puts("\n=== Структурное переиспользование ===")
a = [1, 2, 3]
b = [0 | a]

IO.inspect(a, label: "a")
IO.inspect(b, label: "b")

# a не изменился. BEAM может переиспользовать неизменяемые части структуры.
