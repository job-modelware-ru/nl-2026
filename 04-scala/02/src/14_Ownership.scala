@main
def ownershipDemo(): Unit =

  val a = new StringBuilder("hi")
  val b = a

  b.append("!")

  println(a.toString)

  case class Point(x: Int, y: Int)

  val p1 = Point(1, 2)
  val p2 = p1.copy(x = 10)

  println(p1)
  println(p2)
