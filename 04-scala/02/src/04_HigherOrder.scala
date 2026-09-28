@main
def higherOrderDemo(): Unit =

  def applyTwice(x: Int, f: Int => Int): Int =
    f(f(x))

  val result = applyTwice(3, _ + 1)
  println(s"applyTwice result = $result")

  val numbers = List(1, 2, 3, 4)

  val transformed =
    numbers
      .filter(_ % 2 == 0)
      .map(_ * 10)

  println(transformed)
