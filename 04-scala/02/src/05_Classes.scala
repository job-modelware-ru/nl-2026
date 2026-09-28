@main
def classesDemo(): Unit =

  class User(val name: String, var age: Int):

    def birthday(): Unit =
      age += 1

    def info: String =
      s"$name, $age"

  val user = new User("Anna", 21)
  user.birthday()

  println(user.info)
