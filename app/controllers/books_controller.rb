class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  def create
    @book = Book.create(book_params)

    respond_to do |format|
      format.html {  }
      format.js { }
    end
  end
  private

  def book_params
    params.permit(:title, :author)
  end
end
