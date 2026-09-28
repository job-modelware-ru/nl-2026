import scala.io.Source
import scala.util.{Using, Success, Failure}

@main
def usingResourcesDemo(): Unit =

  val path = "03/src/data/students.csv"

  val lines = Using(Source.fromFile(path)) { source =>
    source.getLines().toList
  }

  lines match
    case Success(value) =>
      println("File was read safely:")
      value.foreach(println)

    case Failure(error) =>
      println(s"Cannot read file: ${error.getMessage}")
