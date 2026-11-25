// Слайд 4: Объектно-ориентированное программирование (ООП)

// По умолчанию классы в Kotlin закрыты (final). Ключевое слово open разрешает наследование
open class Vehicle(val brand: String, var speed: Int = 0) {
    open fun move(): String = "$brand движется со скоростью $speed км/ч"
}

class ElectricCar(
    brand: String,
    speed: Int,
    val batteryCapacity: Int
) : Vehicle(brand, speed) {

    // Кастомный геттер свойства
    val isEcoFriendly: Boolean
        get() = batteryCapacity > 0

    override fun move(): String =
        "${super.move()} на электротяге (батарея $batteryCapacity кВт·ч)"
}

fun main() {
    val car: Vehicle = ElectricCar("Tesla", 110, 75)
    println(car.move())
}