@main
def exceptionsDemo(): Unit =

  def parsePositive(text: String): Int =
    val value = text.toInt

    if value < 0 then
      throw new IllegalArgumentException("negative value")

    value

  val inputs = List("42", "-1", "abc")

  for input <- inputs do
    try
      val value = parsePositive(input)
      println(s"$input -> $value")
    catch
      case e: NumberFormatException =>
        println(s"$input -> not a number")

      case e: IllegalArgumentException =>
        println(s"$input -> ${e.getMessage}")
    finally
      println(s"finished processing '$input'")
