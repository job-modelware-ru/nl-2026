// Слайд 13. Равенство объектов
// Ожидаемый вывод:
//   true
//   false
//   true

def s1 = new String("hi")
def s2 = new String("hi")
def s3 = s1

println s1 == s2
println s1.is(s2)
println s1.is(s3)
