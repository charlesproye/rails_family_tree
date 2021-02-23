class ProfilesController < ApplicationController
  def index
    @roots = User.where(family_id: params[:family_id]).roots
    @users = User.find_by_sql(
     "SELECT
        users.id,
        users.ancestry,
        users.first_name,
        users.last_name,
        users.birth_date,
        users.family_id,
        users.job
      FROM users
      ORDER BY
        users.id,
        users.first_name,
        users.last_name,
        users.birth_date DESC
      LIMIT 1000"
      )
    @users_t = User.where(family_id: params[:family_id])
    @couples = Couple.where(family_id: params[:family_id])

    if params[:search].present?
      @users_searched = @users_t.search_by_job_first_last(params[:search]['user'])
    end
  end

  def show
    @user_act = User.where(id: params[:id])
    @user = @user_act.to_a.first
    @roots = User.where(family_id: params[:family_id]).roots
    @users = User.find_by_sql(
     "SELECT
        users.id,
        users.ancestry,
        users.first_name,
        users.last_name,
        users.birth_date,
        users.family_id,
        users.job
      FROM users
      GROUP BY
        users.id,
        users.first_name,
        users.last_name,
        users.birth_date
      LIMIT 1000"
      )
  end
end
