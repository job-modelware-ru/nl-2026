# Elixir — вторая презентация: исходный код

Примеры соответствуют второй презентации «Elixir: управление программой и данными».

## Содержание

- `02_expressions_flow.exs` — выражения и поток выполнения
- `03_conditions.exs` — `if`, `unless`, `cond`
- `04_case_pattern_matching.exs` — `case` и pattern matching
- `05_guards.exs` — guards
- `06_iteration_enum.exs` — `Enum`, comprehension, pipeline
- `07_with.exs` — последовательность операций через `with`
- `08_errors_as_data.exs` — `{:ok, value}` / `{:error, reason}` и функции с `!`
- `09_exceptions_debug.exs` — `try`, `rescue`, `else`, `after`, отладка
- `10_exunit.exs` — ExUnit, `assert`, `refute`, `assert_raise`, doctest
- `11_modules_namespaces.exs` — модули, пространства имён, `def` / `defp`
- `12_alias_import_require_use.exs` — `alias`, `import`, `require`, `use`
- `13_collections_io.exs` — List, Tuple, Map, MapSet, Keyword List, File / IO
- `14_protocols_behaviours.exs` — Protocol и Behaviour
- `15_final_demo.exs` — итоговый пример, объединяющий темы презентации
- `main.exs` — последовательный запуск всех обычных примеров

## Запуск

Из каталога `src`:

```bash
elixir main.exs
```

Тесты ExUnit в этом учебном наборе оформлены как самостоятельный `.exs`-пример
(`10_exunit.exs` компилирует тестируемый модуль во временный BEAM-файл, иначе
`doctest` не сможет прочитать примеры из `@moduledoc`):

```bash
elixir 10_exunit.exs
```

В полноценном Mix-проекте аналогичные тесты обычно лежат в `test/` и запускаются командой `mix test`.

Интерактивный ввод для примера 13:

```bash
elixir 13_collections_io.exs --interactive
```

Для запуска отдельного примера:

```bash
elixir 07_with.exs
```

Используется только стандартная библиотека Elixir/OTP, сторонних зависимостей нет.
