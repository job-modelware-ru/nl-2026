@main
def closuresDemo(): Unit =

  def makeAdder(delta: Int): Int => Int =
    x => x + delta

  val add10 = makeAdder(10)
  println(add10(5))

  var counter = 0

  val next = () =>
    counter += 1
    counter

  println(next())
  println(next())
