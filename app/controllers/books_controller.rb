class BooksController < ApplicationController

 def create

    @book = Book.new(book_params)

    @book.save

    flash[:success] = 'Book was successfully created.'

    redirect_to book_path(@book.id)
# 20201212なぜかif文がエラーを起こす。エラー発生の最小単位は一番下
    # if　@book.save

    #   flash[:success] = 'Book was successfully created.'

    #   redirect_to book_path(@book.id)

    # else

    #   render books_path

    # end

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

# if文エラーの最小単位
# class BooksController < ApplicationController

# def create

#     if　1+1==2

#     end

# end

# end