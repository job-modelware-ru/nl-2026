# Типы данных и переменные
proc run*() =
  echo "=== 01. Типы данных и переменные ==="
  var x: int = 42
  var y = 3.14
  var s = "Nim"
  var b = true
  var c = 'N'
  var t = (1, "two", 3.0)
  var arr: array[3, int] = [1, 2, 3]
  var sq = @[1, 2, 3]

  echo "int:    ", x
  echo "float:  ", y
  echo "string: ", s
  echo "bool:   ", b
  echo "char:   ", c
  echo "tuple:  ", t
  echo "array:  ", arr
  echo "seq:    ", sq

when isMainModule:
  run()