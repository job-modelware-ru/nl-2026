import scala.concurrent.{Future, Await}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*

@main
def futureBasicsDemo(): Unit =

  def slowSquare(x: Int): Future[Int] = Future {
    Thread.sleep(500)
    x * x
  }

  val futureResult = slowSquare(5)

  println("Future started. Main thread can do something else.")

  val result = Await.result(futureResult, 2.seconds)

  println(s"Result = $result")
