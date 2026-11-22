String name
String source
Console console = System.console()

if (args) {
    name = args[0]
    source = 'command-line argument'
} else if (console) {
    name = console.readLine('Name: ')
    source = 'console'
} else {
    name = System.in.newReader('UTF-8').readLine()
    source = 'standard input'
}

if (!name?.trim()) {
    throw new IllegalArgumentException('Name is required')
}

println "Source: $source"
println "Hello, ${name.trim()}!"
