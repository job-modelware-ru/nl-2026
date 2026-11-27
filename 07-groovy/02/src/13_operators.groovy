// Слайд 14. Операторы как методы
// Ожидаемый вывод:
//   12 USD

class Money {
    int amount

    Money plus(Money other) {
        new Money(amount: amount + other.amount)
    }

    String toString() { "$amount USD" }
}

def a = new Money(amount: 5)
def b = new Money(amount: 7)
println a + b
