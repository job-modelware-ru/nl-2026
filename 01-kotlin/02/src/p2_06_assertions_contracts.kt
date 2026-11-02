// Слайд 7: Встроенные средства отладки (assert, require, check, error)

class BankAccount( initialBalance: Double) {
    var balance: Double = initialBalance
        private set

    init {
        // require проверяет входные аргументы (бросает IllegalArgumentException)
        require(initialBalance >= 0) { "Начальный баланс не может быть отрицательным" }
    }

    fun withdraw(amount: Double) {
        require(amount > 0) { "Сумма снятия должна быть положительной" }
        // check проверяет состояние объекта (бросает IllegalStateException)
        check(balance >= amount) { "Недостаточно средств: баланс $balance, запрос $amount" }

        balance -= amount
        // assert проверяет внутренние инварианты при отладке (флаг JVM -ea)
        assert(balance >= 0) { "Инвариант нарушен: баланс < 0" }
    }
}

fun main() {
    val account = BankAccount(1000.0)
    account.withdraw(350.0)
    println("Остаток на счёте: ${account.balance}")

    try {
        account.withdraw(900.0)
    } catch (e: IllegalStateException) {
        println("Перехвачено нарушение контракта: ${e.message}")
    }
}