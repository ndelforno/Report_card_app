class CoursesController < ApplicationController

  def import
    Course.import(params[:file])
    flash[:notice] = "Courses imported."
    redirect_to root_url
  end

end
