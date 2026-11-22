let scores = [40, 80, 95]
let passed = scores.filter { $0 >= 60 }
let labels = passed.map { "Балл: \($0)" }
let total = passed.reduce(0, +)
print(passed)
print(labels.joined(separator: ", "))
print(total)
