enum Status:
  case New, InProgress, Done

def label(status: Status): String =
  status match
    case Status.New        => "new"
    case Status.InProgress => "work"
    case Status.Done       => "done"

extension (s: String)
  def isBlankLike: Boolean =
    s.trim.isEmpty

@main
def scala3SpecificDemo(): Unit =
  println(label(Status.InProgress))
  println("   ".isBlankLike)
