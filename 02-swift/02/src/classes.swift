class TaskStore {
    var count = 0
    func summary() -> String { "Задач: \(count)" }
}
final class SharedStore: TaskStore {
    override func summary() -> String { "Общих задач: \(count)" }
}
let first = SharedStore()
let second = first
second.count = 2
let store: TaskStore = first
print(store.summary())
print(first === second)
