class HomesController < ApplicationController
  def index
    @book =Book.new
    @books =Book.all
  end
  
  def create
    book =Book.new(book_params)
    book.save
    redirect_to home_path(book.id)
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end
  
  def top
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
