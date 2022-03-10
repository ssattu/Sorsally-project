class UsersController < ApplicationController
  def index
    @users = User.where(is_admin: false).order(:id)
  end

  def destroy
      @user = User.find(params[:id])
      if current_user.is_admin? 
        # debugger
        if @user.status == "Active"
          @user.update(status: "Inactive")
        end
      end
      redirect_to users_path notice: "User set to Inactive"
   
  end

  def activate
      @user = User.find(params[:id])  
      if current_user.is_admin? 
        # debugger
        if @user.status == "Inactive"
          @user.update(status: "Active")
        end
      end
      redirect_to users_path notice: "User set to Active"
  end
end
