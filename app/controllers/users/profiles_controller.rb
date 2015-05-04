class ProfilesController < ApplicationController
  before_action :authenticate_user!

  expose(:user) {current_user}

  def index; end
  def edit; end

  def update
    if current_user.update_attributes(user_params[:nickname])

  end

private
  def user_params
    params.require(:user).permit(:nickname)
  end
end