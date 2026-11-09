# Слайд 11: comptime for и comptime if
from std.sys import CompilationTarget

def power[n: Int](x: Float64) -> Float64:
    var r = 1.0
    comptime for _ in range(n):  # цикл развернётся в n умножений
        r *= x
    return r

def kind[dt: DType]() -> String:
    comptime if dt.is_floating_point():
        return "дробный"
    elif dt.is_integral():
        return "целый"
    else:
        return "другой"

def main():
    print(power[10](2.0))
    print(kind[.float32](), kind[.uint8](), kind[.bool]())
    comptime if CompilationTarget.is_x86():
        print("собрано под x86")
