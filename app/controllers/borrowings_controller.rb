class BorrowingsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @borrowing = Current.user.borrowings.new(book: @book, due_date: Date.today + 2.weeks)
    if @borrowing.save
      flash[:notice] = "Book borrowed successfully"
    else
      flash[:alert] = "Error borrowing book"
    end
    redirect_to @book
  end

  def show
    @book = Book.find(params[:book_id])
  end

  def destroy
    @borrowing = Borrowing.find(params[:id])
    if @borrowing.destroy
      flash[:notice] = "Book returned successfully"
    else
      flash[:alert] = "Error returning book"
    end
    redirect_to profile_path
  end

  def profile
    @borrowings = Current.user.borrowings.includes(:book)
  end
end
