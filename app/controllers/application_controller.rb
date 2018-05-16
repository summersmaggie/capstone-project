class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username, :password, :avatar])
    update_attrs = [:email, :username, :password, :password_confirmation, :current_password, :avatar]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end
end
