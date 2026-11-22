# Источники к презентациям о Mojo

Основное источник [официальную документацию Mojo](https://mojolang.org/docs/).
В неё входят:

[Руководство](https://mojolang.org/docs/manual/)

[Синтаксис](https://mojolang.org/docs/reference/)

[API стандартной библиотеки](https://mojolang.org/docs/std/).

## Презентация 1
- [Установка Mojo](https://mojolang.org/install/)
- [Dockerfile и сборка образа](https://docs.docker.com/learn/content/write-your-first-dockerfile/)
- [`input`](https://mojolang.org/docs/std/io/io/input/), [`print`](https://mojolang.org/docs/std/io/io/print/), [`argv`](https://mojolang.org/docs/std/sys/arg/argv/), [`open`](https://mojolang.org/docs/std/io/file/open/), [`std.os.path` ](https://mojolang.org/docs/std/os/path/path/)
- [Типы](https://mojolang.org/docs/manual/types/), [переменные](https://mojolang.org/docs/manual/variables/), [операторы](https://mojolang.org/docs/manual/operators/), [преобразования типов](https://mojolang.org/docs/reference/cheat-sheets/conversions/)
- [Функции](https://mojolang.org/docs/manual/functions/), [параметризация](https://mojolang.org/docs/manual/parameters/), [синтаксис объявления функций](https://mojolang.org/docs/reference/function-declarations/), [владение значениями](https://mojolang.org/docs/manual/values/ownership/)
- [Замыкания](https://mojolang.org/docs/manual/functions/closures/)
- [Управление потоком выполнения](https://mojolang.org/docs/manual/control-flow/)

## Презентация 2

- [Структуры в Mojo](https://mojolang.org/docs/manual/structs/)
- [Трейты](https://mojolang.org/docs/manual/traits/), [Объявление трейтов](https://mojolang.org/docs/reference/trait-declarations/)
- [Параметризация](https://mojolang.org/docs/manual/parameters/), [Дженерики](https://mojolang.org/docs/manual/generics/), [ограничения времени компиляции](https://mojolang.org/docs/manual/metaprogramming/constraints/)
- [Обработка ошибок](https://mojolang.org/docs/manual/errors/)
- [Модули и пакеты](https://mojolang.org/docs/manual/packages/)

## Презентация 3

Примеры с [Mojo 1.2.0](https://mojolang.org/releases/v1.2.0/)

- API [`List`](https://mojolang.org/docs/std/collections/list/List/), [`Span`](https://mojolang.org/docs/std/collections/span/Span/), [`Dict`](https://mojolang.org/docs/std/collections/dict/Dict/), [`Set`](https://mojolang.org/docs/std/collections/set/Set/), [`Array`](https://mojolang.org/docs/std/collections/array/Array/), [`Tuple`](https://mojolang.org/docs/std/builtin/tuple/Tuple/), [`Optional`](https://mojolang.org/docs/std/collections/optional/Optional/)
- [Создание значений](https://mojolang.org/docs/manual/lifecycle/life/), [автоматическое уничтожение](https://mojolang.org/docs/manual/lifecycle/death/), [декоратор `@fieldwise_init`](https://mojolang.org/docs/reference/decorators/fieldwise-init/)
- [Работа с указателями и кучей](https://mojolang.org/docs/manual/pointers/using-pointers/), API [`OwnedPointer`](https://mojolang.org/docs/std/memory/owned_pointer/OwnedPointer/), [`ArcPointer`](https://mojolang.org/docs/std/memory/arc_pointer/ArcPointer/).
- [Вычисления при компиляции](https://mojolang.org/docs/manual/metaprogramming/comptime-evaluation/), [ограничения и проверки](https://mojolang.org/docs/manual/metaprogramming/constraints/), [использование вычисленных при компиляции значений во время выполнения](https://mojolang.org/docs/manual/metaprogramming/materialization/)
- [Составные инструкции](https://mojolang.org/docs/reference/compound-statements/), [литералы](https://mojolang.org/docs/reference/literals/)
- [Вызов Python из Mojo](https://mojolang.org/docs/manual/python/python-from-mojo/), [совместимость типов](https://mojolang.org/docs/manual/python/types/), API [`Python`](https://mojolang.org/docs/std/python/python/Python/)
- API [`SIMD`](https://mojolang.org/docs/std/simd/SIMD/), [`simd_width_of`](https://mojolang.org/docs/std/sys/info/simd_width_of/), [`vectorize`](https://mojolang.org/docs/std/algorithm/backend/vectorize/vectorize/), [`max.algorithm.parallelize`](https://max.modular.com/api/mojo/max/algorithm/backend/cpu/parallelize/parallelize/), [`Atomic`](https://mojolang.org/docs/std/atomic/atomic/Atomic/), [релиз Mojo 1.2.0 (для \_\_async\_\_ и \_\_await\_\_)](https://mojolang.org/releases/v1.2.0/)