class Public::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @items = @user.items

    if Score.exists?(user_id: @user.id)
      @max_score = @user.scores.maximum(:score)
      if @max_score <= 15
        @user_level = "初級"
      elsif @max_score <= 25
        @user_level = "中級"
      else
        @user_level = "上級"
      end
    else
    end

    @articles = Article.where(level: @user_level).order("created_at DESC")
    @user_articles = Article.where(user_id: @user).order("created_at DESC")

    favorite_articles = Favorite.where(user_id: current_user.id).pluck(:article_id)
    @user_favorite_articles = Article.where(id: favorite_articles)
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
      @user.itemimage_tags.destroy_all
      if @user.itemimage_id.blank?
      else
        tags = Vision.get_image_data(@user.itemimage)
        tags.each do |tag|
          @user.itemimage_tags.create(name: tag)
        end
      end
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :image, :smart_phone, :tablet, :mno_mvno, :background, :choice_reason, :itemimage, items_attributes:[:id, :name, :maker])
    end

end
