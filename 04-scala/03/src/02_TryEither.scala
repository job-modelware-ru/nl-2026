import scala.util.{Try, Success, Failure}

@main
def tryEitherDemo(): Unit =

  def parseScoreTry(text: String): Try[Int] =
    Try(text.toInt).flatMap { value =>
      if value >= 0 && value <= 100 then Success(value)
      else Failure(new IllegalArgumentException("score must be between 0 and 100"))
    }

  def parseScoreEither(text: String): Either[String, Int] =
    text.toIntOption match
      case None =>
        Left("not a number")

      case Some(value) if value < 0 =>
        Left("score is negative")

      case Some(value) if value > 100 =>
        Left("score is greater than 100")

      case Some(value) =>
        Right(value)

  println("Try examples:")
  for input <- List("95", "bad", "150") do
    parseScoreTry(input) match
      case Success(score) => println(s"$input -> score = $score")
      case Failure(error) => println(s"$input -> error = ${error.getMessage}")

  println()
  println("Either examples:")
  for input <- List("95", "bad", "150") do
    val message = parseScoreEither(input) match
      case Right(score) => s"score = $score"
      case Left(error)  => s"error = $error"

    println(s"$input -> $message")
