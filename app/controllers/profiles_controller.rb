class ProfilesController < ApplicationController
  def index
    @users = User.where(family_id: params[:family_id])
    @couples = Couple.where(family_id: params[:family_id])
  end

  def show
    @user_act = User.where(id: params[:id])
    @user = @user_act.to_a.first
  end
end
