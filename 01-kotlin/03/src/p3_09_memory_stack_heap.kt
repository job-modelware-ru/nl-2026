// Слайд 10: Управление памятью — Стек, Куча и передача ссылок

data class MutableBox(var value: Int)

// Примитивы передаются по значению, объекты — копированием ссылки
fun modifyParameters(primitiveVal: Int, boxRef: MutableBox) {
    // Изменение копии ссылки меняет состояние объекта в Куче (Heap)
    boxRef.value += primitiveVal
}

fun main() {
    val localNumber = 10               // Хранится в Стеке (Stack)
    val heapBox = MutableBox(50)       // Объект в Куче (Heap), ссылка в Стеке

    modifyParameters(localNumber, heapBox)

    println("Примитив в стеке остался прежним: $localNumber")
    println("Объект в куче изменился через ссылку: ${heapBox.value}")
}