# Преобразование / приведение типов
import std/strutils

proc run*() =
  echo "=== 03. Преобразование типов ==="
  let a = int(3.99)
  let b = float(7)
  let c = $42
  let d = parseInt("123")
  let e = parseFloat("3.14")

  echo "int(3.99)          = ", a
  echo "float(7)           = ", b
  echo "$42                = ", c
  echo "parseInt(\"123\")   = ", d
  echo "parseFloat(\"3.14\") = ", e

  # let bad = 1 + 2.5  # ошибка компиляции: нет неявного int -> float

when isMainModule:
  run()