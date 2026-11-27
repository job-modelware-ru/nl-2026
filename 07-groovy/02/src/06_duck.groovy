// Слайд 7. Утиная типизация
// Ожидаемый вывод:
//   Quack
//   Beep

class Duck {
    String speak() { "Quack" }
}

class Robot {
    String speak() { "Beep" }
}

def things = [new Duck(), new Robot()]
things.each { println it.speak() }
