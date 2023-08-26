class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = Prototype.new
    @prototypes = @user.prototypes.includes(:user)
    @name = @user.name
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
  end
end
