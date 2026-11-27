// Слайд 15. Безопасные операторы
// Ожидаемый вывод:
//   null
//   Alice
//   Guest
//   empty

def user = null
def other = [name: "Alice"]

println user?.name
println other?.name

def name = user?.name ?: "Guest"
def items = []

println name
println items ?: "empty"
