def grades = [5, 4, 3, 5, 2, 4, 5]

def average(List<Integer> values) {
    values.sum() / values.size()
}

def goodGrades = grades.findAll { it >= 4 }

println "All grades: $grades"
println "Average grade: ${average(grades)}"
println "Good grades: $goodGrades"
println "Number of good grades: ${goodGrades.size()}"