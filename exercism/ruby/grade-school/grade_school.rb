module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @school = Hash.new

    (1..12).each do |grade|
      @school[grade] = Array.new
    end
  end

  def students(grade)
    @school[grade].sort
  end

  def students_by_grade
    student_grade_array = Array.new

    @school.each do |grade, students|
      students == [] ? next : student_grade_array << { grade: grade, students: students.sort }
    end

    student_grade_array
  end

  def add(student, grade)
    @school[grade] << student
  end

end