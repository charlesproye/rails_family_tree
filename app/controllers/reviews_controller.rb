class ReviewsController < ApplicationController
  def create
    @review = Review.new(set_params)
    @user = current_user
    @publication = Publication.find(params[:publication_id])
    @review.user = @user
    @review.publication = @publication
    @review.save
    redirect_to family_publication_path(@user.family, @publication)
  end

  protected

  def set_params
    params.require(:review).permit(:content)
  end
end
