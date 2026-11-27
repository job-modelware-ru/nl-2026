// Слайд 2. Свойства
// Ожидаемый вывод:
//   null -> Alice
//   Alice -> Bob
//   Bob

class Person {
    String name

    void setName(String n) {
        println "${this.name} -> $n"
        this.name = n
    }
}

def p = new Person()
p.name = "Alice"
p.name = "Bob"
println p.getName()
