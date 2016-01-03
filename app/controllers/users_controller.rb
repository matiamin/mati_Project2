class UsersController < ApplicationController

  def show
    #user is identitied by an id
    @user = User.find(params[:id])
    #entries that belong to the user
    @entries = @user.entries

    # The below code allows to filter entries based on categories
    if (params[:filter])
      category = Category.find(params[:filter][:category_id])
      @entries = current_user.entries.where(category: category)
    else
      @entries = Entry.all
    end
    #pagination shows entries in the order they were created
    @entries = @entries.order('created_at DESC').paginate(:page => params[:page], :per_page => 3)
    #All categories
    @categories = Category.all

  end

end
