protocol Titled { var title: String { get } }
struct StudyTask: Titled { let title: String }
struct Lesson: Titled { let title: String }
func show(_ item: any Titled) { print(item.title) }
show(StudyTask(title: "Практика"))
show(Lesson(title: "Протоколы"))
