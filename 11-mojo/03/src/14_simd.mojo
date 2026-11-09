# Слайд 14: SIMD и vectorize
from std.algorithm import vectorize
from std.sys import simd_width_of

def main():
    var v = SIMD[DType.float32, 4](1, 2, 3, 4)
    print(v * 2 + 1, v.reduce_add())  # 4 числа за раз

    comptime W = simd_width_of[DType.float32]()  # ширина регистра
    var data = List[Float32](length=1000, fill=0.5)
    var p = data.unsafe_ptr()
    var total: Float32 = 0

    def chunk[width: Int](i: Int) {mut total, imm p}:
        total += p.unsafe_load[width=width](i).reduce_add()

    vectorize[W](len(data), chunk)
    print("W =", W, "sum =", total)
