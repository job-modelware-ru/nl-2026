# Вспомогательный модуль: экспорт и приватность
proc square*(x: int): int = x * x
proc cube(x: int): int = x * x * x   # приватная — не экспортируется