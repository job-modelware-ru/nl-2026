def a = 10
def b = 3

println "Arithmetic operations:"
println "a + b = ${a + b}"
println "a - b = ${a - b}"
println "a * b = ${a * b}"
println "a / b = ${a / b}"

println "\nType conversion:"

def text = "42"
def number = text as Integer

println "Before: $text -> ${text.getClass()}"
println "After:  $number -> ${number.getClass()}"
println "number + 8 = ${number + 8}"