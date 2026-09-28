@main
def finalDemo(): Unit =

  case class Student(name: String, score: Int)

  trait GradeRule:
    def passed(s: Student): Boolean

  class MinScoreRule(limit: Int) extends GradeRule:
    def passed(s: Student): Boolean =
      s.score >= limit

  class Report[A](val items: List[A]):
    def countWhere(predicate: A => Boolean): Int =
      items.count(predicate)

  val students = List(
    Student("Anna", 95),
    Student("Max", 48),
    Student("Bob", 72)
  )

  val rule = new MinScoreRule(60)
  val report = new Report(students)

  val passedCount = report.countWhere(rule.passed)

  println(s"Passed: $passedCount")
