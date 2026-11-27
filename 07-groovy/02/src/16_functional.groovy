// Слайд 17. Функциональный стиль
// Ожидаемый вывод:
//   8
//   6
//   calc
//   16
//   16

def inc = { it + 1 }
def dbl = { it * 2 }
def both = inc >> dbl

println both(3)

def add = { a, b -> a + b }
def add5 = add.curry(5)

println add5(1)

def slow = { n -> println "calc"; n * n }.memoize()
println slow(4)
println slow(4)
