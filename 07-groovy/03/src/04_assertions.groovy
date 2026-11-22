def prices = [10, 15, 20]

assert prices.every { it > 0 }
println 'All prices are positive'

try {
    def expectedTotal = 50
    assert prices.sum() == expectedTotal: 'Unexpected total'
} catch (AssertionError error) {
    // The catch keeps this teaching example running so we can inspect the message.
    println 'Assertion failed:'
    println error.message
}
