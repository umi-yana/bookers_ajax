class LikesController < ApplicationController

   def create
    @book = Book.find(params[:book_id])
    favorite = current_user.likes.new(book_id: @book.id)
    favorite.save
    # redirect_back(fallback_location: root_path)　#非同期処理のためコメントアウト
   end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = Like.find_by(user_id: current_user.id, book_id: @book.id)
    favorite.destroy
    # redirect_back(fallback_location: root_path) 非同期処理のためコメントアウト
  end
  
  
end