class BookCommentsController < ApplicationController
  # before_action :authenticate_user!, only: [:create]
   def create
    # @book = current_user.books.new(book_params)
    #   if @book.save
    #     redirect_back(fallback_location: root_path)
    #     redirect_back(fallback_location: root_path)
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to request.referer
   end

   def destroy
     BookComment.find(params[:id])
     redirect_to request.referer
   end

   private
     def book_comment_params
       params.require(:book_comment).permit(:comment_content)
      # params.require(:book).permit(:book_content)
     end
end
