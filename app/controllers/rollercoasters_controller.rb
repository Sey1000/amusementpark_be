class RollercoastersController < ApplicationController
  before_action :set_amusementpark

  def index
    @rollercoasters = @amusementpark.rollercoasters.map { |r| render_rollercoaster(r) }
    render json: @rollercoasters
  end

  def show
  end

  private

  def set_amusementpark
    @amusementpark = Amusementpark.find(params[:amusementpark_id])
  end

  def render_rollercoaster(r)
    {
      id: r.id,
      name: r.name,
      construction_year: r.construction_year,
      amusementpark: Amusementpark.find(r.amusementpark_id),
      created_at: r.created_at,
      updated_at: r.updated_at
    }
  end
end
