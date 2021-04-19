class HomesController < ApplicationController

  def top
    @admin_articles = Article.where(user_id: nil).limit(15).order("created_at DESC")
    @user_articles = Article.where(admin_id: nil).limit(15).order("created_at DESC")
  end

  def about
  end

end
