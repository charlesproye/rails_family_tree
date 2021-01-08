class PublicationsController < ApplicationController
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
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
  end

  protected

  def set_params
    params.require(:publication).permit(:title, :content, photos: [])
  end
end
