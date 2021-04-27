class Admins::ArticlesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.admin_id = current_admin.id
    if @article.save
      redirect_to admins_article_path(@article)
    else
      render "new"
    end
  end

  def index
    @articles = Article.where(user_id: nil).page(params[:page]).per(15).order("created_at DESC")
  end

  def show
    @article = Article.find(params[:id])
    @reading_time = @article.reading_time
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to admins_article_path(@article)
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admins_articles_path
  end


  private

    def article_params
      params.require(:article).permit(:title, :body, :level, :image, tag_ids: [])
    end

end
