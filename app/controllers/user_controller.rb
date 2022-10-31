class UserController < ApplicationController

  before_action :fetch_user

  def index
    @users = User.all
  end

  def store_money
    amount = params[:amount].values.first
    @user.update(balance: @user.balance)

    redirect_to user_index_path
  end

  def transactions
  end

  def fetch_user
    @user = User.first
  end

end
