class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user, only: [:show]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def authorize_user
    unless current_user.id.to_i == params[:id].to_i
      redirect_to root_path
    end
  end
end
