# Коллекции: array, seq, set
import std/sequtils

proc run*() =
  echo "06. Коллекции: array, seq, set"

  # array — фиксированный размер, значение-семантика
  var arr: array[3, int] = [10, 20, 30]
  echo "array: ", arr
  echo "arr[1] = ", arr[1]
  echo "arr.len = ", arr.len

  # seq — динамический массив
  var s = @[1, 2, 3]
  s.add(4)
  s.add(5)
  echo "seq: ", s
  echo "s.len = ", s.len

  # Функциональные операции над seq
  let doubled = s.map(proc(x: int): int = x * 2)
  let evens = s.filter(proc(x: int): bool = x mod 2 == 0)
  echo "doubled: ", doubled
  echo "evens:   ", evens

  # set — множество
  var st: set[char] = {'a', 'b', 'c'}
  incl(st, 'd')
  excl(st, 'a')
  echo "set: ", st
  echo "'b' in set: ", 'b' in st
  echo "Кардинальность: ", card(st)