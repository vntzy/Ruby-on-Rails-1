class UsersController < ApplicationController

  def index
  end

  def sign_up
    @user = User.new
    render 'sign_up.erb.html'
  end

  def create_account
    user = User.create user_params
    if user.valid?
      user.save
    end
    redirect_to action: 'index'
  end

  def login
    
  end

  def home
  end

  def logout
    redirect_to action: 'index'
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end