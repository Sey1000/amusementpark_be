class MembershipsController < ApplicationController
  before_action :set_amusementpark

  def index
    @memberships = @amusementpark.memberships.map { |m| render_membership(m) }
    render json: @memberships
  end

  def show
    @membership = render_membership(@amusementpark.memberships.find(params[:id]))
    render json: @membership
  end

  private

  def set_amusementpark
    @amusementpark = Amusementpark.find(params[:amusementpark_id])
  end

  def render_membership(m)
    {
      id: m.id,
      user: User.find(m.user_id),
      amusementpark: Amusementpark.find(m.amusementpark_id),
      created_at: m.created_at,
      updated_at: m.updated_at
    }
  end
end
