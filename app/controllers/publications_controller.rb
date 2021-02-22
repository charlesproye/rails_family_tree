class PublicationsController < ApplicationController
  def index
    @publications = Publication.all

    if params[:search].present?
      @publications = @publications.search_by_publi(params[:search]['publication'])
    end
  end

  def show
    @publication = Publication.find(params[:id])
    @review = Review.new
    @reviews = Review.where(publication: @publication)
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(set_params)
    @user = current_user
    @publication.user = @user
    if @publication.save
      redirect_to family_publications_path(current_user.family)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy

    redirect_to family_publications_path
  end

  protected

  def set_params
    params.require(:publication).permit(:title, :content, photos: [])
  end
end
