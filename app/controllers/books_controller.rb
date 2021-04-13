class BooksController < ApplicationController
  def create
  end

  def destroy
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to home_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
