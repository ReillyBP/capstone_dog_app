class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: :destroy
  before_action :authenticate_admin!, only: [:destroy]
  def index
    @reviews = Review.all
    render "index.html.erb"
  end
  def new
    @review = Review.new
  end
  def show
    @review = Review.find_by(id: params[:id])
  end
  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      subject: params[:subject],
      user_id: params[:user_id],
      body: params[:body],
      vote: params[:vote])
    if review.update
      flash[:success] = "You have successfully updated this review"
      redirect_to "/reviews/#{@review.id}"
    else
      flash[:warning] = "Invalid entry. Please sign in and try again"
      redirect_to "/users/sign_up"
    end
  end
  def edit
    @review = Review.find_by(id: params[:id])
    if @review.user == current_user
      render "edit.html.erb"
    else
      redirect_to "/home"
    end
  end
  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    flash[:danger] = "This review has been successfully deleted"
  end
  def create
    review = Review.new(
      subject: params[:subject],
      user_id: current_user.id,
      body: params[:body],
      vote: 0)

    if review.save
      flash[:success] = "You have successfully added a review"
      redirect_to "/reviews/#{review.id}"
    else
      flash[:warning] = "Invalid entry. Please sign in and try again"
      redirect_to "/users/sign_up"
    end
  end

  def upvote
    review = Review.find_by(id: params[:id])
    review.vote += 1
    review.save
    redirect_to "reviews/#{review.id}"
  end
  def downvote
    review = Review.find_by(id: params[:id])
    review.vote -= 1
    review.save
    redirect_to "reviews/#{review.id}"
  end
end
