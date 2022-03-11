class UsersController < ApplicationController
  def index
    @users = User.where(is_admin: false).order(:id).paginate(page: params[:page] || 1, per_page: 5)
  end

  def destroy
      @user = User.find(params[:id])
      if current_user.is_admin? 
        # debugger
        if @user.status == "Active"
          @user.update(status: "Inactive")
        end
      end
      redirect_to users_path, notice: "#{@user.first_name} is Inactive"
   
  end

  def activate
      @user = User.find(params[:id])  
      if current_user.is_admin? 
        # debugger
        if @user.status == "Inactive"
          @user.update(status: "Active")
        end
      end
      redirect_to users_path, notice: "#{@user.first_name} is Active"
  end
end
