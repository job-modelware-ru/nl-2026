# Слайд 12: match - сопоставление с образцом
def where_is(p: Tuple[Int, Int]) -> String:
    match p:
        case (0, 0):
            return "начало координат"
        case (0, _) | (_, 0):
            return "на оси"
        case (x, y) if x == y:
            return String(t"на диагонали, x = {x}")
        case _:
            return "где-то ещё"

def main():
    for p in [(0, 0), (0, 5), (3, 3), (2, 7)]:
        print(p, "->", where_is(p))

    var found: Optional[Int] = 42
    if case .Some(v) = found:
        print("нашли", v)
