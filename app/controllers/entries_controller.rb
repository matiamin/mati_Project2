class EntriesController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  load_and_authorize_resource
  
  def set_post
  end

  def index
    #Filtering entries based on categories
    if (params[:filter])
      category = Category.find(params[:filter][:category_id])
      @entries = category.entries
    else
      @entries = Entry.all
    end
    @entries = @entries.order('created_at DESC').paginate(:page => params[:page], :per_page => 3)

    @categories = Category.all
  end

  #shows specific entry
  def show
    @entry = Entry.find(params[:id])
  end

  #creates new entry
  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    #or the below one line
    # @entry = current_user.entries.build(entry_params)

    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  #updates the entry, and redirect to it after successfully updated
  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  #deletes the entry, and redirects to all entries after successfully deletion
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end

  #strong params
  private
  def entry_params
    params.require(:entry).permit(:title, :deadline, :description, :institute, :website, :country, :category_id)
  end

end
