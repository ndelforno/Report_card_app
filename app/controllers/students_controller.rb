class StudentsController < ApplicationController
  def index
    @students = Student.all
    @marks = Mark.all
    @course = Course.all
    @tests = Test.all
  end

end
