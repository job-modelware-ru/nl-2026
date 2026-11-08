# Слайд 7: ASAP-уничтожение
@fieldwise_init
struct Noisy:
    var name: String

    def __deinit__(deinit self):
        print("  ~", self.name)

def main():
    var a = Noisy("a")
    var b = Noisy("b")
    print("работаю с", a.name)  # последнее использование a
    print("работаю с", b.name)  # последнее использование b
    print("конец main")
