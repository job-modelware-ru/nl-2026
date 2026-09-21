# Слайд: Преобразование / приведение типов
# В Elixir нет общего неявного приведения строк к числам и обратно:
# преобразования выполняются явно.

IO.puts("=== Строка -> число ===")
IO.inspect(String.to_integer("42") + 1, label: ~s(String.to_integer("42") + 1))
IO.inspect(String.to_float("3.14"), label: ~s(String.to_float("3.14")))

IO.puts("\n=== Число -> строка ===")
IO.inspect(Integer.to_string(42) <> "!", label: "Integer.to_string(42)")
IO.inspect(Float.to_string(3.14), label: "Float.to_string(3.14)")

IO.puts("\n=== Атом <-> строка ===")
IO.inspect(Atom.to_string(:ok), label: "Atom.to_string(:ok)")

# :ok уже существует в VM, поэтому to_existing_atom/1 безопасен в этом примере.
IO.inspect(String.to_existing_atom("ok"), label: ~s(String.to_existing_atom("ok")))

IO.puts("\n=== Truthy / falsy ===")
# Только false и nil считаются falsy.
# 0 и "" являются truthy.
if 0, do: IO.puts("0 считается truthy")
if "", do: IO.puts("пустая строка считается truthy")
if not nil, do: IO.puts("nil считается falsy")
if not false, do: IO.puts("false считается falsy")
