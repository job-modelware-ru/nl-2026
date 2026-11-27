// Слайд 10. Обобщённые типы
// Ожидаемый вывод:
//   43
//   Anna
//   10
//   8.0

class Box<T> {
    T value
}

static <T> T first(List<T> list) {
    list[0]
}

def box = new Box<Integer>(value: 42)

println box.value + 1
println first(["Anna", "Bob"])
println first([10, 20])

// ограничение типа
class NumBox<T extends Number> {
    T value
    double twice() { value * 2 }
}

println new NumBox<Integer>(value: 4).twice()
