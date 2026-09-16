def integer = 42
def decimal = 3.14
def flag = true
def text = "Groovy"
def list = [1, 2, 3]
def map = [name: "Alice", age: 20]
def range = 1..10

println "$integer -> ${integer.getClass()}"
println "$decimal -> ${decimal.getClass()}"
println "$flag -> ${flag.getClass()}"
println "$text -> ${text.getClass()}"
println "$list -> ${list.getClass()}"
println "$map -> ${map.getClass()}"
println "$range -> ${range.getClass()}"