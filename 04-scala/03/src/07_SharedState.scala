import scala.concurrent.{Future, Await}
import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent.duration.*
import java.util.concurrent.atomic.AtomicInteger

@main
def sharedStateDemo(): Unit =

  var unsafeCounter = 0

  val unsafeTasks = (1 to 1000).map { _ =>
    Future {
      unsafeCounter += 1
    }
  }

  Await.result(Future.sequence(unsafeTasks), 5.seconds)

  println(s"Unsafe counter = $unsafeCounter")
  println("The number may be less than 1000 because counter += 1 is not atomic.")

  val safeCounter = AtomicInteger(0)

  val safeTasks = (1 to 1000).map { _ =>
    Future {
      safeCounter.incrementAndGet()
    }
  }

  Await.result(Future.sequence(safeTasks), 5.seconds)

  println(s"Safe counter = ${safeCounter.get()}")
