struct Progress {
    let total: Int
    var completed: Int {
        didSet { print("Готово: \(completed)") }
    }
    var fraction: Double { Double(completed) / Double(total) }
    init(total: Int) {
        precondition(total > 0)
        self.total = total
        self.completed = 0
    }
}
var progress = Progress(total: 4)
progress.completed = 2
print(progress.fraction)
