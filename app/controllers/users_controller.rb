class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_reservations = @user.reservations
  end
end
