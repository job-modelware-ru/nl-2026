# Коллекции: Table, HashSet, Deque
import std/[tables, sets, deques]

proc run*() =
  echo "07. Коллекции: Table, HashSet, Deque"

  # Table — хеш-таблица
  var ages = initTable[string, int]()
  ages["Alice"] = 30
  ages["Bob"] = 25
  ages["Charlie"] = 35
  echo "ages[Alice] = ", ages["Alice"]
  echo "Размер таблицы: ", ages.len
  for name, age in ages:
    echo "  ", name, " -> ", age

  # HashSet
  var names = initHashSet[string]()
  names.incl("Nim")
  names.incl("Python")
  names.incl("Rust")
  names.incl("Nim")   # дубликат не добавится
  echo "HashSet: ", names
  echo "Размер: ", names.len

  # Deque — двусторонняя очередь
  var dq = initDeque[int]()
  dq.addLast(1)
  dq.addLast(2)
  dq.addFirst(0)
  echo "Deque: ", dq
  echo "peekFirst: ", dq.peekFirst()
  echo "peekLast:  ", dq.peekLast()