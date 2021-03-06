require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/student_teacher'

module StudentsTeachersImporter
  def self.import
    s = Student.all
    t = Teacher.all

    s.count.times do |i|
      StudentTeacher.create(
        :student_id => i + 1
        :teacher_id => rand(t.count) + 1
        )
    end
  end
end