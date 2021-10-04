class CommentsController < ApplicationController
  
  def create
    @book = Book.find(params[:book_id])
    @comment = Comment.new(comment_params)
    @comments = @book.comments
    @comment.user_id = current_user.id
    @comment.book_id = @book.id
    @comment.save
    
    # redirect_to book_path(book)
  end
  
  def destroy
  @book = Book.find(params[:book_id])
  @comment = Comment.find(params[:id])
  @comments = @book.comments
  @comment.destroy
  # redirect_to books_path(comment)
  end
  
  private
  def comment_params
  params.require(:comment).permit(:content)
  end  
  
end
