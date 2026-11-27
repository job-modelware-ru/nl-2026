// Слайд 3. Параметры методов
// Ожидаемый вывод:
//   Hello, World!
//   Hello, Alice!
//   localhost:8080

def greet(String name = "World") {
    "Hello, $name!"
}

def connect(Map options) {
    "${options.host}:${options.port}"
}

println greet()
println greet("Alice")
println connect(host: "localhost", port: 8080)