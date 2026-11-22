import java.util.concurrent.Callable
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future

def numbers = [2, 3, 4, 5]
ExecutorService pool = Executors.newFixedThreadPool(2)

try {
    List<Future<Integer>> futures = numbers.collect { number ->
        pool.submit({ number * number } as Callable<Integer>)
    }

    // get() waits for a task when necessary and returns its result.
    def squares = futures.collect { future -> future.get() }

    println "Numbers: $numbers"
    println "Squares: $squares"
    println "Sum: ${squares.sum()}"
} finally {
    pool.shutdown()
}
