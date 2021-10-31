class SelectsController < ApplicationController
  
  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.selects.new(book_id: @book.id)
    favorite.save
    redirect_back(fallback_location: root_path)
   end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = Select.find_by(user_id: current_user.id, book_id: @book.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
  
  

end
