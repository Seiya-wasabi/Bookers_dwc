class BooksController < ApplicationController
  def create
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to homes_path
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:text2] = "Book was successfully updated."
    redirect_to home_path(book.id)
    else
      @books = Book.all
      render template: "homes/edit"
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
