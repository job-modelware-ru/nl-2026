# ML, часть 2: организация кода и работа с данными

`content.json` содержит 20 слайдов с кратким текстом, фрагментами кода, заметками докладчика и официальными источниками. Основная версия примеров — OCaml 5.4. Сравнения относятся к Standard ML ’97 и F# 9. Эти версии выбраны как база материала, без утверждения об актуальности последних релизов.

## Запуск примеров

Нужен установленный OCaml 5.4. Сторонние OCaml-библиотеки не требуются. Следующие команды выполняются из этой папки:

```sh
ocaml src/slide_03_exceptions.ml
ocaml src/slide_04_result.ml
ocaml src/slide_05_debug.ml
ocaml src/slide_06_modules.ml
ocaml src/slide_09_generic_types.ml
ocaml src/slide_10_generic_functions.ml
ocaml src/slide_11_value_restriction.ml
ocaml src/slide_13_lists.ml
ocaml src/slide_14_arrays.ml
ocaml src/slide_15_sets_maps.ml
ocaml src/slide_16_hashtbl.ml
printf '42\n' | ocaml src/slide_17_console.ml
ocaml src/slide_18_files.ml
ocaml src/slide_19_cleanup.ml
```

Консольный пример также можно проверить на неверной строке и конце ввода:

```sh
printf 'abc\n' | ocaml src/slide_17_console.ml
ocaml src/slide_17_console.ml < /dev/null
```

Файловые примеры создают только собственные временные файлы и удаляют их в завершающем обработчике. Они не требуют входных файлов и не перезаписывают пользовательские документы.

Интерфейсный пример запускается отдельно по инструкции `src/interfaces/README.md`.

## Ожидаемые результаты

| Файл | Основной вывод |
| --- | --- |
| `slide_03_exceptions.ml` | `Invalid score: -1` |
| `slide_04_result.ml` | `Count: 12` |
| `slide_05_debug.ml` | `Invariant holds` |
| `slide_06_modules.ml` | `100 / 100` |
| `slide_09_generic_types.ml` | `42 ML` |
| `slide_10_generic_functions.ml` | `42 ML` |
| `slide_11_value_restriction.ml` | `Two independent cells` |
| `slide_13_lists.ml` | `Sum: 20` |
| `slide_14_arrays.ml` | `99, length 3` |
| `slide_15_sets_maps.ml` | `20` |
| `slide_16_hashtbl.ml` | `20` |
| `slide_17_console.ml`, ввод `42` | `Enter an integer:`, затем `Value: 42` |
| `slide_18_files.ml` | `ML` |
| `slide_19_cleanup.ml` | `Empty input handled after cleanup` |
| `interfaces/main.ml` | `Count: 1` |

Самопроверки через `assert` включены в полные исходники. При проверке не передавайте компилятору `-noassert`. Код слайдов является точной выдержкой из соответствующих файлов, а не самостоятельным псевдокодом.

## Отладчик

Для проверки под `ocamldebug` можно собрать пример в байткод с отладочной информацией:

```sh
mkdir -p _build
ocamlc -g -o _build/debug src/slide_05_debug.ml
ocamldebug _build/debug
```

В интерактивной сессии отладчика доступны команды `run`, `step`, `backtrace` и `quit`. Пример не содержит преднамеренной ошибки, поэтому запись трассировок не создаёт дополнительного вывода.

## Проверка примеров

14 самостоятельных примеров и проект из `interfaces` проверены компиляторами `ocamlc` и `ocamlopt` из OCaml 5.4.0. Консольный ввод дополнительно проверен для целого числа, неверной строки и EOF.

## Основные источники

- OCaml 5.4 Manual и стандартная библиотека: <https://ocaml.org/manual/5.4/index.html>
- SML ’97 Definition: <https://smlfamily.github.io/sml97-defn.pdf>
- SML Basis Library: <https://smlfamily.github.io/Basis/overview.html>
- F# Language Reference: <https://learn.microsoft.com/en-us/dotnet/fsharp/language-reference/>
- opam: <https://opam.ocaml.org/doc/Usage.html>
- Dune: <https://dune.readthedocs.io/en/stable/reference/dune/executable.html>

Точные ссылки для каждого слайда находятся в `sources` внутри `content.json`.

## Вопросы для обсуждения

1. Когда достаточно `option`, а когда нужен `result` с причиной ошибки?
2. Почему `open M` не заменяет подключение внешней зависимости к сборке?
3. Что клиент знает о типе, если в `.mli` объявлено только `type t`?
4. Почему две ячейки из `make_cell ()` могут хранить разные типы, а одна ячейка — нет?
5. Как различается обновление `Map` и `Hashtbl`?
6. Почему для индексного доступа обычно выбирают массив?
7. Что происходит с открытым каналом, если callback `with_open_bin` поднимает исключение?
8. Почему обязательную проверку ввода нельзя заменять обычным `assert`?
