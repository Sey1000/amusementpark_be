class AmusementparksController < ApplicationController
  def index
    render json: Amusementpark.all.map { |ap| render_amusementpark(ap)}
  end

  def show
    render json: render_amusementpark(Amusementpark.find(params[:id]))
  end

  private

  def render_amusementpark(ap)
    {
      id: ap.id,
      name: ap.name,
      city: ap.city,
      created_at: ap.created_at,
      updated_at: ap.updated_at,
      rollercoasters: ap.rollercoasters
    }
  end
end
