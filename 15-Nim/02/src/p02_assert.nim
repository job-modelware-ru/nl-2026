# Обработка ошибок: assert и doAssert
proc run*() =
  echo "02. Assert и doAssert"

  # assert отключается через --assertions:off или -d:danger.
  # doAssert остаётся активным; -d:release не отключает assert.
  assert 1 + 1 == 2
  echo "assert 1 + 1 == 2 прошёл"

  doAssert 2 * 2 == 4, "2*2 должно быть 4"
  echo "doAssert 2 * 2 == 4 прошёл"

  doAssertRaises(ValueError):
    raise newException(ValueError, "тестовое исключение")
  echo "doAssertRaises(ValueError) прошёл"

  # Этот тест требует включённой проверки границ.
  # Используйте обычную сборку или -d:release, без -d:danger.
  doAssertRaises(IndexDefect):
    let s = @[1, 2, 3]
    discard s[10]
  echo "doAssertRaises(IndexDefect) прошёл"