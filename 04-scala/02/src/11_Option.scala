@main
def optionDemo(): Unit =

  def findUser(id: Int): Option[String] =
    if id == 1 then Some("Anna")
    else None

  val name =
    findUser(1)
      .map(_.toUpperCase)
      .getOrElse("UNKNOWN")

  val missing =
    findUser(2)
      .map(_.toUpperCase)
      .getOrElse("UNKNOWN")

  println(name)
  println(missing)
