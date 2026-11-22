enum Status {
    case planned
    case done(score: Int)
    func label() -> String {
        switch self {
        case .planned: return "В плане"
        case .done(let score): return "Готово: \(score)"
        }
    }
}
print(Status.planned.label())
print(Status.done(score: 90).label())
