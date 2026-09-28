@main
def functionsDemo(): Unit =

  def greet(name: String, prefix: String = "Hello"): String =
    s"$prefix, $name"

  val first = greet("Anna")
  val second = greet(name = "Bob", prefix = "Hi")

  println(first)
  println(second)
