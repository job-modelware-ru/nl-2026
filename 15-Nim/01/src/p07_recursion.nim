# Рекурсия
proc factorial(n: int): int =
  if n <= 1: 1
  else: n * factorial(n - 1)

proc fib(n: int): int =
  if n < 2: n
  else: fib(n - 1) + fib(n - 2)

proc run*() =
  echo "=== 07. Рекурсия ==="
  echo "5! = ", factorial(5)
  echo "fib(10) = ", fib(10)

when isMainModule:
  run()