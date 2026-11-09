class Greeting {
    String name

    String message() {
        "Hello, $name!"
    }
}

def greeting = new Greeting(name: 'JVM')

println greeting.message()
println "Class: ${greeting.class.name}"
println "Superclass: ${greeting.class.superclass.name}"
