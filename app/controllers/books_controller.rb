class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)

    if @book.save
      flash[:book_success] = "Book saved."
      redirect_to book_path(@book)
    else
      flash.now[:book_error] = "Oops. Book not saved."
      render :'new'
    end

  end

  private
  def books_params
    params.require(:book).permit(:title, :author, :year, :description, :category)
  end

end
