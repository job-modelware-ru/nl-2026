// Слайд 18. Метапрограммирование
// Ожидаемый вывод:
//   HI!
//   no boo

String.metaClass.shout = { ->
    delegate.toUpperCase() + "!"
}

println "hi".shout()

class Ghost {
    def methodMissing(String name, args) {
        "no $name"
    }
}

println new Ghost().boo()
