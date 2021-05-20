class BookmarksController < ApplicationController

  def new
    # @list = list.find(params[:list_id])
    # @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = list.find(params[:list_id])
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie = @movie
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(list_id)
    else
      render :new
    end
  end

  def destroy
    @bookmark = bookmark.find(bookmark_params)
  end

  private

  def bookmark_params
    params.require.(:bookmark).permit(:movie_id)
  end
end
