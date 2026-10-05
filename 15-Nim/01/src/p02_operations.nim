# Операции над типами
import std/strutils

proc run*() =
  echo "=== 02. Операции над типами ==="
  let a = 10
  let b = 3
  echo "a + b   = ", a + b
  echo "a - b   = ", a - b
  echo "a * b   = ", a * b
  echo "a / b   = ", a / b
  echo "a div b = ", a div b
  echo "a mod b = ", a mod b

  let s1 = "Hello"
  let s2 = "World"
  echo "concat: ", s1 & ", " & s2
  echo "repeat: ", s1 & " " & repeat("!", 3)

  echo "true and false = ", true and false
  echo "true or false  = ", true or false
  echo "not true       = ", not true
  echo "10 > 5         = ", 10 > 5
  echo "10 == 10       = ", 10 == 10

when isMainModule:
  run()