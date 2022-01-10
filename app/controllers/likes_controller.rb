class LikesController < ApplicationController

   def create
    @book = Book.find(params[:book_id])
    favorite = current_user.likes.new(book_id: @book.id)
    favorite.save
 
   end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = Like.find_by(user_id: current_user.id, book_id: @book.id)
    favorite.destroy
  end
  
  
end
