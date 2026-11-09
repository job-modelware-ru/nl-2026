# Интерфейс и реализация модуля Counter

В `counter.mli` тип `t` абстрактный. Клиент работает с ним только через объявленные операции. `counter.ml` использует `int` и содержит неэкспортируемое имя `internal_label`.

Запуск из этой папки с OCaml 5.4:

```sh
ocamlc -c counter.mli
ocamlc -c counter.ml
ocamlc -o counter_demo counter.cmo main.ml
./counter_demo
```

Ожидаемый вывод: `Count: 1`.

Попытки использовать `Counter.internal_label` или сложить `Counter.zero + 1` в клиентском коде не пройдут проверку типов. Эти намеренно некорректные строки не включены в исполняемый пример.
