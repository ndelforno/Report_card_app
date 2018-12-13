class StudentsController < ApplicationController
  def index
    @students = Student.all
    @marks = Mark.all
    @courses = Course.all
    @tests = Test.all

  end

  def import
    Student.import(params[:file])
    flash[:notice] = "Students imported."
    redirect_to root_url
  end

end
