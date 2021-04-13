class HomesController < ApplicationController
  def index
    @book =Book.new
    @books =Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:text1] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def top
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
