class UserForCompanion(val name: String, val age: Int):
  def info: String = s"$name, $age"

object UserForCompanion:
  def fromLine(line: String): UserForCompanion =
    val parts = line.split(",")
    new UserForCompanion(parts(0), parts(1).toInt)

object MathUtils:
  def square(x: Int): Int = x * x

@main
def objectDemo(): Unit =
  println(MathUtils.square(5))

  val user = UserForCompanion.fromLine("Anna,21")
  println(user.info)
