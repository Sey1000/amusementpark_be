class AmusementparksController < ApplicationController
  def index
    render json: Amusementpark.all
  end

  def show
    render json: Amusementpark.find(params[:id])
  end
end
