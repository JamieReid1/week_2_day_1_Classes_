require('minitest/autorun')
require('minitest/rg')
require_relative('../Code_clan_student')

class CodeClanStudent < MiniTest::Test

  def test_student_name()
    student = Student.new("Bob", "E28")
    assert_equal("Bob", student.name)
  end

  def test_student_cohort()
    student = Student.new("Bob", "E28")
    assert_equal("E28", student.cohort)
  end

  def test_set_student_name()
    student = Student.new("Bob", "E28")
    student.name = ("Alice")
    assert_equal("Alice", student.name)
  end

  def test_set_student_cohort()
    student = Student.new("Bob", "E28")
    student.cohort = ("E29")
    assert_equal("E29", student.cohort)
  end

  def test_student_talk()
    student = Student.new("Bob", "E28")
    assert_equal("I can talk!", student.talk())
  end

  def test_favourite_language()
    student = Student.new("Bob", "E28")
    assert_equal("I love Ruby", student.favourite_language("Ruby"))
  end

end
