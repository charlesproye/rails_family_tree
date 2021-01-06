class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    families_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :description, :photo, :birth_date, :job])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :description, :photo, :birth_date, :job])
  end
end
