import Foundation

// Уникальный временный каталог не затрагивает пользовательские файлы.
func roundTrip() throws {
    let manager = FileManager.default
    let folder = manager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
    try manager.createDirectory(at: folder, withIntermediateDirectories: true)
    defer {
        do { try manager.removeItem(at: folder) }
        catch { print("Не удалось удалить временный каталог: \(error)") }
    }
    let url = folder.appendingPathComponent("report.txt")
    try "Swift: 90".write(to: url, atomically: true, encoding: .utf8)
    let text = try String(contentsOf: url, encoding: .utf8)
    print(text)
}
do { try roundTrip() }
catch { print("Ошибка файла: \(error)") }
