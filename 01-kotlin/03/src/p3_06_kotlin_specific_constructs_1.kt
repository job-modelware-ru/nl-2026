// Слайд 7: Специфические конструкции (Часть 1) — data class, sealed, object

// 1. data class: автогенерация equals, hashCode, toString, copy и componentN
data class User(val id: Int, val name: String, val role: String = "Reader")

// 2. sealed interface: закрытая иерархия состояний (компилятор знает все ветки)
sealed interface ApiResponse {
    data class Success(val user: User) : ApiResponse
    data class Error(val code: Int, val message: String) : ApiResponse
    data object Loading : ApiResponse
}

fun render(response: ApiResponse): String = when (response) {
    is ApiResponse.Success -> "Загружен: ${response.user.name} (${response.user.role})"
    is ApiResponse.Error   -> "Ошибка ${response.code}: ${response.message}"
    ApiResponse.Loading    -> "Загрузка..."
}

fun main() {
    val admin = User(1, "Алексей").copy(role = "Admin")
    val (id, name, role) = admin // Деструктуризация объекта
    println("Деструктуризация: id=$id, name=$name, role=$role")
    println(render(ApiResponse.Success(admin)))
}