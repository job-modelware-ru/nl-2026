# main.exs — единая точка входа для демонстрации всех примеров презентации
#
# Запуск:
#   elixir main.exs
#
# Запуск из корня 01/:
#   elixir src/main.exs
#
# Через Docker из каталога src/:
#   docker run --rm -v "$PWD":/app -w /app elixir:1.20 elixir main.exs

files = [
  "01_types.exs",
  "02_operations.exs",
  "03_typecast.exs",
  "04_scope.exs",
  "05_ownership.exs",
  "06_functions.exs",
  "07_function_inputs.exs",
  "08_function_outputs.exs",
  "09_recursion.exs",
  "10_closures.exs"
]

Enum.each(files, fn file ->
  IO.puts("\n########## #{file} ##########\n")
  Code.require_file(file, __DIR__)
end)
