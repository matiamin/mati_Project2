class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @entries = @user.entries


    if (params[:filter])
      category = Category.find(params[:filter][:category_id])
      # @entries = category.entries
      @entries = current_user.entries.where(category: category)
    else
      @entries = Entry.all
    end
    @entries = @entries.order('created_at DESC').paginate(:page => params[:page], :per_page => 2)

    @categories = Category.all

  end

end
