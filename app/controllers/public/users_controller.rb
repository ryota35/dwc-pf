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
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :smart_phone, :tablet, :mno_mvno, :background, :choice_reason, items_attributes:[:id, :name, :maker])
  end

end
