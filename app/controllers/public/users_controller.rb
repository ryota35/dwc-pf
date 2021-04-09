class Public::UsersController < ApplicationController

  def show
    @max_score = current_user.scores.maximum(:score)
  end

  def edit
    @user = User.find(params[:id])
    @items_number = @user.items.count
    (5 - @items_number).times do
      @user.items.build
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to request.referer
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, items_attributes:[:id, :name, :maker])
  end

end
