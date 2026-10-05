# Области видимости
var globalVar = "я глобальная переменная"

proc run*() =
  echo "=== 04. Области видимости ==="
  echo "globalVar: ", globalVar

  block:
    var blockVar = "я в блоке"
    echo "blockVar:  ", blockVar
  # echo blockVar  # ошибка: вне блока не видна

  proc inner() =
    echo "Из процедуры видна: ", globalVar
  inner()

when isMainModule:
  run()