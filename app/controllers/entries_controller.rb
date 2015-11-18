class EntriesController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

def set_post
end

def index
  # authenticate_user!
  @entries = Entry.all
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
    params.require(:entry).permit(:title, :deadline, :description, :institute, :website, :country)
  end


end
