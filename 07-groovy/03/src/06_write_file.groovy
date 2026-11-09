import java.nio.file.Files
import java.nio.file.Path

Path report = Files.createTempFile('groovy-report-', '.txt')

try {
    report.withWriter('UTF-8') { writer ->
        writer.writeLine('language=Groovy')
        writer.writeLine('examples=12')
    }

    println 'Saved report:'
    report.eachLine('UTF-8') { line ->
        println line
    }
} finally {
    Files.deleteIfExists(report)
}
