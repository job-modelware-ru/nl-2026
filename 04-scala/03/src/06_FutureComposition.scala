import scala.concurrent.{Future, Await}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*

@main
def futureCompositionDemo(): Unit =

  def loadName(id: Int): Future[String] = Future {
    Thread.sleep(200)
    s"student-$id"
  }

  def loadScore(id: Int): Future[Int] = Future {
    Thread.sleep(200)
    70 + id
  }

  val oneStudent: Future[String] =
    for
      name <- loadName(1)
      score <- loadScore(1)
    yield s"$name: $score"

  val allScores: Future[List[Int]] =
    Future.sequence(List(loadScore(1), loadScore(2), loadScore(3)))

  println(Await.result(oneStudent, 2.seconds))
  println(Await.result(allScores, 2.seconds))
