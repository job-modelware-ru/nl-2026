func makeCounter() -> () -> Int {
    var count = 0
    return { count += 1; return count }
}
final class DeferredAction {
    private var action: (() -> Void)?
    func store(_ action: @escaping () -> Void) { self.action = action }
    func run() { action?() }
}
let next = makeCounter()
print(next())
print(next())
let deferred = DeferredAction()
deferred.store { print("Действие сохранено") }
deferred.run()
