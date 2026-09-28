import scala.collection.mutable.ArrayBuffer

@main
def collectionsDeeperDemo(): Unit =

  val xs = List(1, 2, 3)
  val ys = xs :+ 4

  println(s"xs = $xs")
  println(s"ys = $ys")

  val buf = ArrayBuffer(1, 2, 3)
  buf += 4
  println(s"buf = $buf")

  case class Student(name: String, score: Int)

  val students = List(
    Student("Anna", 95),
    Student("Max", 48),
    Student("Bob", 72)
  )

  val names =
    students
      .filter(_.score >= 60)
      .sortBy(_.name)
      .map(_.name)

  println(names)
