class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @entries = @user.entries
end

end
