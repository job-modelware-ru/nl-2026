// Слайд 20. Пакеты
// Запуск из папки 19_packages:  groovy -cp src src/Main.groovy
// Ожидаемый вывод:
//   Alice

import org.example.model.User

println new User(name: "Alice").name
