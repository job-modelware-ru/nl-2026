// Слайд 12. Неизменяемые данные
// Ожидаемый вывод:
//   Pair(x, 1)
//   Point[x=3, y=4]
//   5.0

import groovy.transform.Immutable

@Immutable
class Pair {
    String a
    Integer b
}

println new Pair(a: "x", b: 1)

record Point(int x, int y) {
    double distance() {
        Math.sqrt(x * x + y * y)
    }
}
def p = new Point(3, 4)
println p
println p.distance()
