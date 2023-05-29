class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :devise_allowed_parameters, if: :devise_controller?

  protected

  def devise_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end
