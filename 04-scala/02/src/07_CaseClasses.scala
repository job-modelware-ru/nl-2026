@main
def caseClassesDemo(): Unit =

  case class Student(name: String, score: Int)

  val s1 = Student("Anna", 95)
  val s2 = s1.copy(score = 100)

  println(s1.name)
  println(s1 == Student("Anna", 95))
  println(s2)
