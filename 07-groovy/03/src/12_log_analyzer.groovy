import java.nio.file.Path
import java.util.concurrent.Callable
import java.util.concurrent.ExecutionException
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit

class InvalidLogLineException extends RuntimeException {
    InvalidLogLineException(String message) {
        super(message)
    }
}

class LogEntry {
    String level
    String path
    int status
    int durationMs
}

LogEntry parseLogLine(String line, int lineNumber) {
    String[] parts = line.trim().split(/\s+/)

    if (parts.length != 4) {
        throw new InvalidLogLineException("Line $lineNumber must contain 4 fields")
    }

    try {
        new LogEntry(
            level: parts[0],
            path: parts[1],
            status: Integer.parseInt(parts[2]),
            durationMs: Integer.parseInt(parts[3])
        )
    } catch (NumberFormatException exception) {
        throw new InvalidLogLineException("Line $lineNumber contains a non-numeric value")
    }
}

Path inputFile = Path.of('data/access.log')

ExecutorService executor = Executors.newFixedThreadPool(2)
List<Future<LogEntry>> futures = []

inputFile.eachLine('UTF-8') { line, number ->
    futures << executor.submit({
        parseLogLine(line, number)
    } as Callable<LogEntry>)
}

def entries = []
def errors = []

try {
    futures.each { future ->
        try {
            entries << future.get()
        } catch (ExecutionException exception) {
            errors << exception.cause.message
        }
    }
} finally {
    executor.shutdown()

    if (!executor.awaitTermination(1, TimeUnit.SECONDS)) {
        executor.shutdownNow()
    }
}

def statusCounts = new TreeMap(entries.countBy { it.status })
def slowPaths = entries.findAll { it.durationMs >= 100 }*.path

println "Processed: ${entries.size()}"
println "Invalid: ${errors.size()}"
println "Status counts: $statusCounts"
println "Slow paths: $slowPaths"
errors.each { println "Error: $it" }
