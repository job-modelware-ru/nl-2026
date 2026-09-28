@main
def genericsDemo(): Unit =

  case class Box[A](value: A)

  def first[A](items: List[A]): A =
    items.head

  val intBox = Box(10)
  val textBox = Box("Scala")

  println(intBox)
  println(textBox)
  println(first(List(1, 2, 3)))
  println(first(List("a", "b")))
