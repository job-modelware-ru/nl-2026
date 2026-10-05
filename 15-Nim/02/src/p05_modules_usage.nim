# Модули: импорт и использование
import p04_modules_util

proc run*() =
  echo "04. Модули и пространства имён"
  echo "square(5) = ", square(5)
  echo "square(9) = ", square(9)
  # echo cube(3)   # ошибка компиляции: cube не экспортируется из модуля