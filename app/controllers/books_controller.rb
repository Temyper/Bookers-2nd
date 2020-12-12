class BooksController < ApplicationController

  def create

    @book = Book.new(book_params)

    # 20201212不自然なエラーについて、全角スペースが混じっている可能性
    if @book.save

      flash[:success] = 'Book was successfully created.'

      redirect_to book_path(@book.id)

    else

      render books_path

    end

  end


def index
    @books = Book.all
    @book = Book.new
end


  def show
    @book = Book.find(params[:id])
  end

  def new
    # @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:success] = 'Book was successfully destroyed.'
    redirect_to books_path
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:success] = 'Book was successfully updated.'
    redirect_to book_path(book.id)
  end


  def top

  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
