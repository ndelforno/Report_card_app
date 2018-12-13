class StudentsController < ApplicationController
  def index
    @students = Student.all
    @marks = Mark.all
    @courses = Course.all
    @tests = Test.all

  end

  def import
    Student.import(params[:file])
    redirect_to root_url, notice: "Students imported."
  end

end
