class Admins::ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.admin_id = current_admin.id
    article.save
    redirect_to admins_article_path(article)
  end

  def index
  end

  def show
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to admins_article_path(article)
  end

  private

    def article_params
      params.require(:article).permit(:title, :body, :level, :image)
    end

end
