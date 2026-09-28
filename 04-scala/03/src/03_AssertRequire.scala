@main
def assertRequireDemo(): Unit =

  def average(scores: List[Int]): Double =
    require(scores.nonEmpty, "scores must not be empty")
    assert(scores.forall(_ >= 0), "scores must be non-negative")

    val result = scores.sum.toDouble / scores.length

    result.ensuring(_ >= 0, "average must be non-negative")

  println(average(List(80, 90, 100)))

  try
    println(average(Nil))
  catch
    case e: IllegalArgumentException =>
      println(s"require failed: ${e.getMessage}")

  try
    println(average(List(10, -1, 20)))
  catch
    case e: AssertionError =>
      println(s"assert failed: ${e.getMessage}")
