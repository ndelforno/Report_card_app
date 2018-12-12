class AddIdToStudentTestCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :student_id, :integer
    add_column :courses, :course_id, :integer
    add_column :tests, :test_id, :integer
  end
end
