# Управление потоком: условия и циклы
proc run*() =
  echo "=== 09. Управление потоком ==="
  for i in 0..4:
    if i mod 2 == 0:
      echo i, " - чётное"
    else:
      echo i, " - нечётное"

  var n = 5
  while n > 0:
    echo "n = ", n
    dec n

  case n
  of 0: echo "ноль"
  of 1..5: echo "от 1 до 5"
  else: echo "другое"

when isMainModule:
  run()