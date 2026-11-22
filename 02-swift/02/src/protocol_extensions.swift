protocol Titled { var title: String { get } }
extension Titled {
    func heading() -> String { "Тема: \(title)" }
}
struct Lesson: Titled { let title: String }
print(Lesson(title: "Swift").heading())
