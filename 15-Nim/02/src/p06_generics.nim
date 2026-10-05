# Обобщённые типы (generics)
proc myMax[T](a, b: T): T =
  if a > b: a else: b

type
  Stack[T] = object
    items: seq[T]

  Pair[A, B] = object
    first: A
    second: B

proc push[T](s: var Stack[T]; item: T) =
  s.items.add(item)

proc pop[T](s: var Stack[T]): T =
  if s.items.len == 0:
    raise newException(ValueError, "стек пуст")
  result = s.items[^1]
  s.items.setLen(s.items.len - 1)

proc run*() =
  echo "05. Обобщённые типы"

  # Декларация — параметр [T]
  echo "myMax(3, 7)        = ", myMax(3, 7)
  echo "myMax(3.14, 2.71)  = ", myMax(3.14, 2.71)
  echo "myMax(\"a\", \"b\")   = ", myMax("a", "b")

  # Инстанцирование происходит автоматически при использовании
  var intStack: Stack[int]
  intStack.push(10)
  intStack.push(20)
  intStack.push(30)
  echo "pop из Stack[int]:    ", intStack.pop()

  var strStack: Stack[string]
  strStack.push("Nim")
  strStack.push("rocks")
  echo "pop из Stack[string]: ", strStack.pop()

  # Параметризованный тип с двумя типами
  let p = Pair[int, string](first: 42, second: "answer")
  echo "Pair.first  = ", p.first
  echo "Pair.second = ", p.second