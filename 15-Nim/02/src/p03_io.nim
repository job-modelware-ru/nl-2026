# Стандартная библиотека ввода-вывода
import std/os

proc run*() =
  echo "03. Ввод-вывод"

  # Вывод в консоль: stdout.write не добавляет перевод строки сам.
  echo "Это вывод в консоль через echo."
  # Здесь перевод строки явно включён в строковый литерал.
  stdout.write("Через stdout.write без перевода строки.\n")

  # Запись в файл
  let path = "example_output.txt"
  writeFile(path, "Привет из Nim!\nСтрока 2\nСтрока 3\n")
  echo "Файл записан: ", path
  echo "Размер файла: ", getFileSize(path), " байт"

  # Чтение всего файла
  let content = readFile(path)
  echo "Содержимое файла:"
  echo content

  # Построчное чтение
  echo "Построчно:"
  for line in lines(path):
    echo "  > ", line

  # Проверка существования и удаление
  echo "Файл существует: ", fileExists(path)
  removeFile(path)
  echo "После удаления: ", fileExists(path)