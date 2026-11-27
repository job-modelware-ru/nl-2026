// Слайд 23. Итоговый пример
// Ожидаемый вывод:
//   IT: [Ann, Bob], total 500
//   HR: [Cid], total 100

record Employee(String name, String dept, int salary) {}

def staff = [
    new Employee("Ann", "IT", 300),
    new Employee("Bob", "IT", 200),
    new Employee("Cid", "HR", 100)
]

staff.groupBy { it.dept }.each { dept, list ->
    def names = list*.name
    def total = list.sum { it.salary }
    println "$dept: $names, total $total"
}
