class StudentsController < ApplicationController
  def index
    @students = Student.all
    @marks = Mark.all
    @courses = Course.all
    @tests = Test.all
  end

end
