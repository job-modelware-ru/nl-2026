def age = 20

if (age >= 18) {
    println "Adult"
} else {
    println "Minor"
}

def names = []

if (names) {
    println "The list is not empty"
} else {
    println "The list is empty"
}

names << "Alice"

if (names) {
    println "Now the list is not empty: $names"
}