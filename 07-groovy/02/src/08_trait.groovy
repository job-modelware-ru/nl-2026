// Слайд 9. Трейты
// Ожидаемый вывод:
//   Duck walks
//   Duck swims

trait Walker {
    String walk() { "${getClass().simpleName} walks" }
}

trait Swimmer {
    String swim() { "${getClass().simpleName} swims" }
}

class Duck implements Walker, Swimmer {}

def d = new Duck()
println d.walk()
println d.swim()
