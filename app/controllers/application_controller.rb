class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
  # protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:first_name, :last_name, :zip_code, :country, :contact, :email, :password, :password_confirmation, :is_admin, :status)}
    devise_parameter_sanitizer.permit(:sign_in){|u| u.permit(:contact, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update){|u| u.permit(:first_name, :last_name, :zip_code, :country, :contact, :email, :password, :password_confirmation, :is_admin, :status)}
  end
end
