# Замыкания
proc apply(f: proc(x: int): int; x: int): int =
  result = f(x)

proc makeCounter(): proc(): int =
  var count = 0
  result = proc(): int =
    count.inc
    count

proc run*() =
  echo "=== 08. Замыкания ==="
  let double = proc(x: int): int = x * 2
  echo "apply(double, 21) = ", apply(double, 21)

  let counter = makeCounter()
  echo counter()
  echo counter()
  echo counter()

when isMainModule:
  run()