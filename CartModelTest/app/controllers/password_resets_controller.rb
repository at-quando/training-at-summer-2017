# 123456

class PasswordResetsController < ApplicationController
  skip_before_action :require_login
  def new
  end

  def edit
    @user = User.find_by_confirm_token(params[:id])
  end

  def update
    @user = User.find_by_confirm_token(params[:id])
      if @user.update(reset_user_params)
        flash[:success] = "Change Password Successful! Please try to login again!"
        redirect_to login_path
      else
        flash[:danger] = "Failed to Reset Password!"
        render :edit 
      end
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    @user.set_confirmation_token
    @user.save
    UserMailer.password_reset(@user).deliver_now
    redirect_to password_resets_index_path
  end

  def reset_your_password
    @user = User.find_by_confirm_token(params[:id])
  end

  private

  def reset_user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
