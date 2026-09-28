@main
def traitsDemo(): Unit =

  trait Printable:
    def asText: String

    def print(): Unit =
      println(asText)

  class Report(val title: String) extends Printable:
    def asText: String = s"Report: $title"

  val report = new Report("Scala")
  report.print()
