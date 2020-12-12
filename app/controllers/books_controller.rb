class BooksController < ApplicationController

  def create

    @book = Book.new(book_params)

    # 20201212不自然なエラーについて、全角スペースが混じっている可能性
    if @book.save

      flash[:success] = 'Book was successfully created.'

      redirect_to book_path(@book.id)

    else

      # indexアクションの方で@booksを作るのに、記述しないと反映されずindex画面でエラー
      @books = Book.all
      render 'index'

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

    @book = Book.find(params[:id])

    if @book.update(book_params)

      flash[:success] = 'Book was successfully updated.'
      redirect_to book_path(@book.id)

    else

      # 20201212規約のパスの表現でなくページファイル名を記述するらしい
      # ↓は誤り
      # render edit_book_path
      render 'edit'
    end

  end


  def top

  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
