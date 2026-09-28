sealed trait DemoResult
case class DemoSuccess(value: Int) extends DemoResult
case class DemoFailure(message: String) extends DemoResult

def handle(result: DemoResult): String =
  result match
    case DemoSuccess(v) => s"OK: $v"
    case DemoFailure(m) => s"Error: $m"

@main
def patternMatchingObjectsDemo(): Unit =
  println(handle(DemoSuccess(200)))
  println(handle(DemoFailure("not found")))
