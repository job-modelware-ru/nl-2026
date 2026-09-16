def numbers = [1, 2, 3, 4, 5]

def user = [
    name: "Alice",
    age: 20
]

println "Numbers: $numbers"
println "User: $user"
println "Name: ${user.name}"

def result = numbers
    .findAll { it % 2 == 0 }
    .collect { it * it }

println "Squares of even numbers: $result"