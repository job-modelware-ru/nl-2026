def factorial(int n) {
    if (n <= 1) {
        return 1
    }

    n * factorial(n - 1)
}

println "5! = ${factorial(5)}"
println "10! = ${factorial(10)}"