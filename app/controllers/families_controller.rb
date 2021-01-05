class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    if @family.update(params_family)
      redirect_to families_path
    else
      render :edit
    end
  end

  private

  def params_family
    params.require(:family).permit(:name, :photo)
  end
end
