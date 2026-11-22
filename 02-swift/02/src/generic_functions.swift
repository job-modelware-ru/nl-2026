func sameTitle<A, B>(_ a: A, _ b: B) -> Bool
where A: Titled, B: Titled {
    a.title == b.title
}
protocol Titled { var title: String { get } }
struct StudyTask: Titled { let title: String }
struct Lesson: Titled { let title: String }
print(sameTitle(StudyTask(title: "Swift"), Lesson(title: "Swift")))
print(sameTitle(StudyTask(title: "Swift"), Lesson(title: "Типы")))
