import scala.annotation.tailrec

@main
def recursionDemo(): Unit =

  def factorial(n: Int): Int =
    if n <= 1 then 1
    else n * factorial(n - 1)

  @tailrec
  def sumTo(n: Int, acc: Int = 0): Int =
    if n <= 0 then acc
    else sumTo(n - 1, acc + n)

  println(s"factorial(5) = ${factorial(5)}")
  println(s"sumTo(10) = ${sumTo(10)}")
