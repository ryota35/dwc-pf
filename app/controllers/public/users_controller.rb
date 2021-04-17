class Public::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = @user.items
    @max_score = current_user.scores.maximum(:score)

    if @max_score <= 15
      @user_level = "初級"
    elsif @max_score <= 25
      @user_level = "中級"
    else
      @user_level = "上級"
    end

    @articles = Article.where(level: @user_level).limit(5).order("created_at DESC")
    @user_articles = Article.where(user_id: @user).limit(5).order("created_at DESC")
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
