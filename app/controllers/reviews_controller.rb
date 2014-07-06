class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book

    if @review.save
      flash[:notice] = "Review saved."
      redirect_to book_path(@book)
    else
      flash.now[:notice] = "Review not saved."
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body)
  end

end
