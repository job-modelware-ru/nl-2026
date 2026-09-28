import scala.io.Source
import scala.util.Using
import scala.concurrent.{Future, Await}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*
import java.io.PrintWriter

case class Student(name: String, score: Int)

def parseLine(line: String): Either[String, Student] =
  line.split(",").map(_.trim).toList match
    case name :: scoreText :: Nil =>
      scoreText.toIntOption match
        case None =>
          Left(s"score is not a number: '$scoreText'")

        case Some(score) if score < 0 || score > 100 =>
          Left(s"score is out of range: $score")

        case Some(score) =>
          Right(Student(name, score))

    case _ =>
      Left(s"bad line format: '$line'")

def readStudents(path: String): Either[String, List[Student]] =
  val linesResult =
    Using(Source.fromFile(path)) { source =>
      source.getLines().drop(1).toList
    }.toEither.left.map(_.getMessage)

  linesResult.flatMap { lines =>
    val parsed = lines.map(parseLine)
    val errors = parsed.collect { case Left(error) => error }
    val students = parsed.collect { case Right(student) => student }

    if errors.nonEmpty then Left(errors.mkString("; "))
    else Right(students)
  }

def writeText(path: String, text: String): Future[Unit] = Future {
  val writer = new PrintWriter(path)

  try
    writer.print(text)
  finally
    writer.close()
}

def summary(students: List[Student]): String =
  val average = students.map(_.score).sum.toDouble / students.length
  s"Average score: $average\nTotal students: ${students.length}\n"

def passed(students: List[Student]): String =
  students
    .filter(_.score >= 60)
    .map(s => s"${s.name}: ${s.score}")
    .mkString("Passed students:\n", "\n", "\n")

@main
def finalDemo(): Unit =

  val readResult = readStudents("03/src/data/students.csv")

  readResult match
    case Left(error) =>
      println(s"Input error: $error")

    case Right(students) =>
      require(students.nonEmpty, "students must not be empty")

      val average = students.map(_.score).sum.toDouble / students.length
      assert(average >= 0, "average must be non-negative")

      val reports = Future.sequence(List(
        writeText("03/src/data/summary.txt", summary(students)),
        writeText("03/src/data/passed.txt", passed(students))
      ))

      Await.result(reports, 3.seconds)

      println("Reports were created:")
      println("03/src/data/summary.txt")
      println("03/src/data/passed.txt")
