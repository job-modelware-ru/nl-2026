// Слайд 6. Передача аргументов и владение
// Ожидаемый вывод:
//   [a, new]
//   1

def addItem(List l) { l << "new" }
def reassign(List l) { l = ["other"] }
def inc(int n) { n++ }

def items = ["a"]
addItem(items)
reassign(items)
println items

def n = 1
inc(n)
println n
