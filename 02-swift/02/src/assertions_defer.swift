func report(_ scores: [Int]) {
    precondition(scores.allSatisfy { (0...100).contains($0) })
    defer { print("Отчёт завершён") }
    guard scores.isEmpty == false else { return }
    let total = scores.reduce(0, +)
    assert(total >= 0)
    print("Сумма: \(total)")
}
report([80, 90])
report([])
