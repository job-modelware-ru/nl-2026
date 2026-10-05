# Обработка ошибок: исключения
proc safeDivide(a, b: int): float =
  if b == 0:
    raise newException(ValueError, "деление на ноль")
  result = a.float / b.float

proc run*() =
  echo "01. Исключения"

  # Ловим конкретное исключение
  try:
    echo "10 / 0 = ", safeDivide(10, 0)
  except ValueError as e:
    echo "Поймано ValueError: ", e.msg
  finally:
    echo "Блок finally выполнен"

  # Ловим базовый тип
  try:
    discard safeDivide(1, 0)
  except CatchableError as e:
    echo "Поймано CatchableError: ", e.msg

  # Нормальное выполнение
  try:
    echo "10 / 2 = ", safeDivide(10, 2)
  except ValueError as e:
    echo "Ошибка: ", e.msg
  finally:
    echo "Второй finally выполнен"