func select(_ values: [Int], using rule: (Int) -> Bool) -> [Int] {
    values.filter(rule)
}
let scores = [40, 80, 95]
let passed = select(scores) { score in score >= 60 }
print(passed)
print(select(scores) { $0 >= 90 })
