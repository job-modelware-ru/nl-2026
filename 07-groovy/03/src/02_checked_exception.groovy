String firstLine(Reader source) {
    // BufferedReader.readLine() declares IOException in Java.
    // Groovy does not require throws or a surrounding try/catch.
    new BufferedReader(source).readLine()
}

Reader source = new StringReader('Alice\nBob')
println "Checked call without throws: ${firstLine(source)}"
