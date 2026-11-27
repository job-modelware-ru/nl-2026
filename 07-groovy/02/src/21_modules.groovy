// Слайд 22. Модули и зависимости
// Ожидаемый вывод:
//   Groovy
//   {"name":"Alice","age":20}

// @Grab скачивает библиотеку из Maven при запуске.
@Grab('org.apache.commons:commons-lang3:3.14.0')
import org.apache.commons.lang3.StringUtils
import groovy.json.JsonOutput

println StringUtils.capitalize("groovy")
println JsonOutput.toJson([name: "Alice", age: 20])
