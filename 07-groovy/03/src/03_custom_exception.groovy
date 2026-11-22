class InvalidScoreException extends RuntimeException {
    InvalidScoreException(String message) {
        super(message)
    }
}

int validateScore(int score) {
    if (!(score in 0..100)) {
        throw new InvalidScoreException("Score outside 0..100: $score")
    }

    score
}

[95, 120].each { score ->
    try {
        println "Valid score: ${validateScore(score)}"
    } catch (InvalidScoreException exception) {
        println "Invalid score: ${exception.message}"
    }
}
