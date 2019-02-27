class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: render_user
  end

  private

  def render_user
    {
      first_name: @user.first_name,
      last_name: @user.last_name,
      age: @user.age,
      email: @user.email,
      created_at: @user.created_at,
      updated_at: @user.updated_at,
      memberships: @user.memberships.map { |m| render_membership(m) }
    }
  end

  def render_membership(m)
    {
      id: m.id,
      user_id: m.user_id,
      amusementpark: render_amusementpark(Amusementpark.find(m.amusementpark_id)),
      created_at: m.created_at,
      updated_at: m.updated_at
    }
  end

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
