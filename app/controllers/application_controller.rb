class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
  # protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:first_name, :last_name, :zip_code, :country, :contact, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:sign_ip){|u| u.permit(:contact, :login, :password)}
    devise_parameter_sanitizer.permit(:account_update){|u| u.permit(:first_name, :last_name, :zip_code, :country, :contact, :email, :password, :password_confirmation)}
  end
end
