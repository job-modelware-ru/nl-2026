enum ScoreError: Error { case invalid }
func parseScore(_ text: String) throws -> Int {
    guard let score = Int(text), (0...100).contains(score) else {
        throw ScoreError.invalid
    }
    return score
}
for text in ["90", "oops", "101"] {
    do { print(try parseScore(text)) }
    catch ScoreError.invalid { print("Некорректный балл") }
    catch { print("Ошибка: \(error)") }
}
