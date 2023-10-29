class Student
  attr_reader :first_name, :last_name

  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def student_fullname
    "#{first_name} #{last_name}"
  end
end
