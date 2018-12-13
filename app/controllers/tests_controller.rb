class TestsController < ApplicationController

  def import
    Test.import(params[:file])
    flash[:notice] = "Tests imported."
    redirect_to root_url
  end

end
