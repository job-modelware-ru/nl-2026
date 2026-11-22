enum Status { case planned, done(score: Int) }
let statuses: [Status] = [.planned, .done(score: 90), .done(score: 40)]
for status in statuses {
    if case .done(let score) = status { print("Балл: \(score)") }
    switch status {
    case .done(let score) where score >= 60: print("Зачёт")
    case .done: print("Повторить")
    case .planned: print("Ещё не сдано")
    }
}
