class EntriesController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  load_and_authorize_resource
  # this method is not doing anything, so I'd delete it.
  def set_post
  end

  def index
    # nice approach to filtering!
    if (params[:filter])
      category = Category.find(params[:filter][:category_id])
      @entries = category.entries
    else
      @entries = Entry.all
    end
    @entries = @entries.order('created_at DESC').paginate(:page => params[:page], :per_page => 3)

    @categories = Category.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])

  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    # this could be shortened to the line below, though yours is certainly fine too
    # @entry = current_user.entries.build(entry_params)

    if @entry.save
      redirect_to @entry
    else
      render 'new'
    end
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end


  private
  def entry_params
    params.require(:entry).permit(:title, :deadline, :description, :institute, :website, :country, :category_id)
  end

end
