class ProfilesController < ApplicationController
  def index
    @users = User.where(family_id: params[:family_id])
    @couples = Couple.where(family_id: params[:family_id])

    if params[:search].present?
      @users_searched = @users.search_by_job_first_last(params[:search]['user'])
    end
  end

  def show
    @user_act = User.where(id: params[:id])
    @user = @user_act.to_a.first
    @users = User.where(family_id: params[:family_id])
  end
end
