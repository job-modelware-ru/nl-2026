def square = { x ->
    x * x
}

println "Square of 5: ${square(5)}"

def numbers = [1, 2, 3, 4, 5]

println "\nElements:"

numbers.each { number ->
    println number
}