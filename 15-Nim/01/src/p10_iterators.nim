# Итераторы
iterator countdown(n: int): int =
  var i = n
  while i >= 0:
    yield i
    dec i

proc run*() =
  echo "=== 10. Итераторы ==="
  for x in countdown(3):
    echo x

when isMainModule:
  run()