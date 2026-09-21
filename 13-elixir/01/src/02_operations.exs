# Слайд: Операции над типами

IO.puts("=== Арифметические операции ===")
IO.inspect(7 + 3, label: "7 + 3")
IO.inspect(7 - 3, label: "7 - 3")
IO.inspect(7 * 3, label: "7 * 3")
IO.inspect(7 / 3, label: "7 / 3")
IO.inspect(div(7, 3), label: "div(7, 3)")
IO.inspect(rem(7, 3), label: "rem(7, 3)")
IO.inspect(2 ** 10, label: "2 ** 10")

IO.puts("\n=== Строки и списки ===")
IO.inspect("Hello" <> ", " <> "world!", label: "конкатенация строк")
IO.inspect([1, 2] ++ [3, 4], label: "конкатенация списков")
IO.inspect([1, 2, 3, 2] -- [2], label: "разность списков")

IO.puts("\n=== Сравнение ===")
IO.inspect(3 == 3.0, label: "3 == 3.0")
IO.inspect(3 === 3.0, label: "3 === 3.0")
IO.inspect(3 != 4, label: "3 != 4")
IO.inspect(3 < 4, label: "3 < 4")
IO.inspect(4 >= 4, label: "4 >= 4")

IO.puts("\n=== Логические операции ===")
IO.inspect(true and false, label: "true and false")
IO.inspect(true or false, label: "true or false")
IO.inspect(not false, label: "not false")

# &&, || и ! работают с truthy/falsy значениями.
IO.inspect(nil || "fallback", label: ~s(nil || "fallback"))
IO.inspect(0 && "0 считается truthy", label: ~s(0 && "..."))
