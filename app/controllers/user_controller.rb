class UserController < ApplicationController
  def new
    @user = User.new
  end

  def show;end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Your account has been created."
      redirect_to users_path
    else
      render :new
    end
  end

  def edit;end

  def update
    if user.update
      flash[:notice] = "Your account has had been updated."
      redirect_to users_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,:password)
  end
end
