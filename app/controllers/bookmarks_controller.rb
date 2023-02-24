class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, status: :see_other
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end
end
