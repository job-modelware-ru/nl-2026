// Слайд 11. Аннотации-трансформации
// Ожидаемый вывод:
//   Point(1, 2)
//   true

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@ToString
@EqualsAndHashCode
class Point {
    int x
    int y
}

def p1 = new Point(x: 1, y: 2)
def p2 = new Point(x: 1, y: 2)

println p1
println p1 == p2
