# Единая точка запуска примеров второй презентации.
#
# Запуск из каталога src:
#   elixir main.exs
#
# Пример с ExUnit запускается отдельно:
#   elixir 10_exunit.exs
#
# Интерактивный ввод на слайде 13:
#   elixir 13_collections_io.exs --interactive

files = [
  "02_expressions_flow.exs",
  "03_conditions.exs",
  "04_case_pattern_matching.exs",
  "05_guards.exs",
  "06_iteration_enum.exs",
  "07_with.exs",
  "08_errors_as_data.exs",
  "09_exceptions_debug.exs",
  "11_modules_namespaces.exs",
  "12_alias_import_require_use.exs",
  "13_collections_io.exs",
  "14_protocols_behaviours.exs",
  "15_final_demo.exs"
]

Enum.each(files, fn file ->
  IO.puts("\n########## #{file} ##########\n")
  Code.require_file(file, __DIR__)
end)

IO.puts("\n10_exunit.exs запускается отдельно командой: elixir 10_exunit.exs")
