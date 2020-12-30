class ProfilesController < ApplicationController
  def index
    @users = User.where(family_id: params[:family_id])
    @couples = Couple.where(family_id: params[:family_id])
  end
end
