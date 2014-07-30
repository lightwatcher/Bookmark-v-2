class BookmarksController < ApplicationController

  def index
    @bookmarks = Mark.all
  end

  def show
    @bookmark = Mark.find_by(id: params[:id])
    @user = User.find_by(id: @bookmark.userid)
  end

  def new
  end

  def create
    @bookmark = Mark.new
    @bookmark.title = params[:title]
    @bookmark.url = params[:url]
    @bookmark.descrip = params[:descrip]
    @bookmark.userid = params[:userid]

    if @bookmark.save
      redirect_to "/bookmarks/#{ @bookmark.id }"
    else
      render 'new'
    end
  end

  def edit
    @bookmark = Mark.find_by(id: params[:id])
  end

  def update
    @bookmark = Mark.find_by(id: params[:id])
    @bookmark.title = params[:title]
    @bookmark.url = params[:url]
    @bookmark.descrip = params[:descrip]
    @bookmark.userid = params[:userid]

    if @bookmark.save
      redirect_to "/bookmarks/#{ @bookmark.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @bookmark = Mark.find_by(id: params[:id])
    @bookmark.destroy


    redirect_to "/bookmarks"
  end
end
