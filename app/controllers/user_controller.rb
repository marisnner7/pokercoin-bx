class UserController < ApplicationController

  def index
    @users = User.all
  end

  def add
  end

  def store_money
    amount = params[:amount].values.first
    @user.update(balance: @user.balance + BigDecimal(amount))

    redirect_to user_index_path
  end

  def transactions
  end
end
