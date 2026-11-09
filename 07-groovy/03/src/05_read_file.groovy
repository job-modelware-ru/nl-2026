import java.nio.file.Path

Path inputFile = Path.of('data/names.txt')

inputFile.eachLine('UTF-8') { line, number ->
    def (name, age) = line.split(',')*.trim()
    println "$number. $name, age $age"
}
