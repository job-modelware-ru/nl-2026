// Слайд 4. Рекурсия
// Ожидаемый вывод:
//   120
//   5000050000

import groovy.transform.TailRecursive

long fact(long n) {
    n <= 1 ? 1 : n * fact(n - 1)
}

println fact(5)

@TailRecursive
long sumTo(long n, long acc = 0) {
    if (n == 0) return acc
    sumTo(n - 1, acc + n)
}

println sumTo(100000)
