func label(_ title: String, prefix: String = "Задача") -> String {
    "\(prefix): \(title)"
}
func label(_ number: Int) -> String { "Задача №\(number)" }
func complete(_ count: inout Int) { count += 1 }
var completed = 0
complete(&completed)
print(label("Прочитать главу"))
print(label(3))
print(completed)
