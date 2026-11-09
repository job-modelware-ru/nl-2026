int parseAge(String text) {
    Integer.parseInt(text)
}

['21', 'twenty'].each { text ->
    try {
        println "Age: ${parseAge(text)}"
    } catch (NumberFormatException exception) {
        println "Cannot parse '$text': ${exception.class.simpleName}"
    } finally {
        println "Processed: $text"
    }
}
