# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    # debugger
    if !User.where(email: "#{params[:user][:email]}").present?
      redirect_to new_user_registration_path, notice: "User not found"
    elsif (User.find_by(email: "#{params[:user][:email]}").status == 'Active')
      super
    elsif (User.find_by(email: "#{params[:user][:email]}").status == 'Inactive')
      redirect_to root_path, notice: "You have been Diabled by Admin, Please contact Admin"
    else
     redirect_to new_user_registration_path 
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
