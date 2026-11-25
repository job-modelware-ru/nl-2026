// Слайд 8: Специфические конструкции (Часть 2) — Extensions, operator, infix, DSL

// 1. Функция-расширение (Extension Function) добавляет метод без наследования
fun String.MaskEmail(): String {
    val parts = this.split("@")
    return if (parts.size == 2) "${parts[0].first()}***@${parts[1]}" else this
}

// 2. Перегрузка оператора (+) и инфиксная функция (infix)
data class Vector2D(val x: Int, val y: Int) {
    operator fun plus(other: Vector2D) = Vector2D(x + other.x, y + other.y)
    infix fun dot(other: Vector2D): Int = x * other.x + y * other.y
}

fun main() {
    println("Почта: ${"student@university.edu".MaskEmail()}")

    val v1 = Vector2D(2, 3)
    val v2 = Vector2D(4, 5)
    println("Сумма векторов (v1 + v2): ${v1 + v2}")
    println("Скалярное произведение (v1 dot v2): ${v1 dot v2}")
}