# Слайд: Типы данных
# Elixir имеет динамическую типизацию: тип относится к значению.
# Для проверки типов обычно используются guard-функции is_*.

IO.puts("=== Типы данных ===")

integer = 42
float = 3.14
boolean = true
atom = :ok
string = "hello"
list = [1, 2, 3]
tuple = {:ok, 10}
map = %{name: "Anna", age: 20}
fun = fn x -> x * 2 end
pid = self()

IO.inspect(integer, label: "integer")
IO.inspect(float, label: "float")
IO.inspect(boolean, label: "boolean")
IO.inspect(atom, label: "atom")
IO.inspect(string, label: "string")
IO.inspect(list, label: "list")
IO.inspect(tuple, label: "tuple")
IO.inspect(map, label: "map")
IO.inspect(fun, label: "function")
IO.inspect(pid, label: "pid")

IO.puts("\n=== Проверка типа ===")
IO.inspect(is_integer(integer), label: "is_integer(42)")
IO.inspect(is_float(float), label: "is_float(3.14)")
IO.inspect(is_atom(atom), label: "is_atom(:ok)")
IO.inspect(is_binary(string), label: ~s(is_binary("hello")))
IO.inspect(is_list(list), label: "is_list([1, 2, 3])")
IO.inspect(is_tuple(tuple), label: "is_tuple({:ok, 10})")
IO.inspect(is_map(map), label: "is_map(%{...})")
IO.inspect(is_function(fun), label: "is_function(fun)")
IO.inspect(is_pid(pid), label: "is_pid(self())")
