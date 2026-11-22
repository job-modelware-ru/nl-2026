struct StudyTask {
    let title: String
    var isDone = false
    mutating func finish() { isDone = true }
}
let original = StudyTask(title: "Swift")
var copy = original
copy.finish()
print(original.isDone, copy.isDone)
