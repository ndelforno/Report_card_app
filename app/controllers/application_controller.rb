require 'csv'

class ApplicationController < ActionController::Base

Student.destroy_all
Mark.destroy_all
Course.destroy_all
Test.destroy_all

  CSV.foreach('students.csv') do |row|
    Student.create(
      name: row[1],
      student_id: row[0]
    )
  end

  CSV.foreach('marks.csv') do |row|
    Mark.create(
      test_id: row[0],
      student_id: row[1],
      mark: row[2]
    )
  end

  CSV.foreach('courses.csv') do |row|
    Course.create(
      name: row[1],
      teacher: row[2],
      course_id: row[0]
    )
  end

  CSV.foreach('tests.csv') do |row|
    Test.create(
      test_id: row[0],
      course_id: row[1],
      weight: row[2]
    )
  end

  
end
