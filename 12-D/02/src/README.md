# Примеры D — презентация 2

Запуск одного файла из директории `src`:

```bash
rdmd students.d
```

Для модуля `grades` (презентация 2): `rdmd -I. modules_demo.d`.
Для встроенных тестов: `dmd -unittest -run unittest_demo.d`.

Для проверки требуется компилятор D (DMD) с Phobos. Код рассчитан на ветку D2.
