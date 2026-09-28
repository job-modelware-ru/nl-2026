import scala.annotation.tailrec

case class Point(x: Int, y: Int)

@main
def jvmMemoryDemo(): Unit =

  val a = new StringBuilder("Scala")
  val b = a

  b.append(" JVM")

  println(s"a = $a")
  println(s"b = $b")
  println("a and b reference the same mutable object")

  val p1 = Point(1, 2)
  val p2 = p1.copy(x = 10)

  println(s"p1 = $p1")
  println(s"p2 = $p2")
  println("case class copy creates a new immutable value")

  @tailrec
  def sumTo(n: Int, acc: Int = 0): Int =
    if n <= 0 then acc
    else sumTo(n - 1, acc + n)

  println(s"sumTo(100) = ${sumTo(100)}")

  lazy val expensive: String =
    println("expensive value is computed only once")
    "computed result"

  println("Before first lazy val access")
  println(expensive)
  println(expensive)
