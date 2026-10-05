# Владение и передача владения
proc takeOwnership(s: sink string) =
  echo "Получено владение строкой: '", s, "'"

proc run*() =
  echo "=== 05. Владение и передача владения ==="
  var myStr = "hello"
  echo "До вызова: myStr = '", myStr, "'"
  takeOwnership(myStr)
  echo "После вызова (перемещена): myStr = '", myStr, "'"

when isMainModule:
  run()