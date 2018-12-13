class MarksController < ApplicationController

  def import
    Mark.import(params[:file])
    flash[:notice] = "Marks imported."
    redirect_to root_url
  end
end
