# Функции: входные и выходные данные
proc greet(name: string = "world"): string =
  result = "Hello, " & name & "!"

proc add(a, b: int): int = a + b
proc add(a, b: float): float = a + b

proc run*() =
  echo "=== 06. Функции: вход и выход ==="
  echo greet()
  echo greet("Nim")
  echo "add(2, 3)     = ", add(2, 3)
  echo "add(2.5, 3.5) = ", add(2.5, 3.5)

when isMainModule:
  run()