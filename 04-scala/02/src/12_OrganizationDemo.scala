import presentation.services.StudentService

@main
def organizationDemo(): Unit =
  val service = new StudentService()

  println("All students:")
  service.findAll().foreach(println)

  println("Passed:")
  service.passed.foreach(println)
