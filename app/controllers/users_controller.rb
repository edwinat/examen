class UsersController < ApplicationController
  def create
  		@user = User.new(user_params)
		@user.save
        format.html { redirect_to @post, notice: 'User creado.' }
 end

private
    def user_params
      params.require(:user).permit(:name)
    end
end
