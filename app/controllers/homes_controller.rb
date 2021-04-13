class HomesController < ApplicationController
  def index
    @book =Book.new
  end
  
  def create
    book =Book.new(book_params)
    book.save
    redirect_to home_path(:id)
  end

  def new
  end

  def edit
  end

  def show
  end
  
  def top
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
