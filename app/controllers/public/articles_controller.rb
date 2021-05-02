class Public::ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @article = Article.new
  end

  def index
    @tags = Tag.all

    if params[:tag_id].nil?
      @articles = Article.all.page(params[:page]).per(15).order("created_at DESC")
    else
      @tag = Tag.find(params[:tag_id])
      @articles = @tag.articles.all.page(params[:page]).per(15).order("created_at DESC")
    end

    case (params[:sort])
    when "0"
      @level = "初級"
      @articles = @articles.where(level: "初級")
    when "1"
      @level = "中級"
      @articles = @articles.where(level: "中級")
    when "2"
      @level = "上級"
      @articles = @articles.where(level: "上級")
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    if current_user.articles.exists? && current_user.articles.last.title == @article.title
      redirect_to user_path(current_user)
    else
      if @article.save
        redirect_to article_path(@article), flash: {success: "ご投稿ありがとうございます。"}
      else
        render "new"
      end
    end
  end

  def show
    @article = Article.find(params[:id])
    @reading_time = @article.reading_time
    @comments = @article.comments
    @comment = Comment.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  private

    def article_params
      params.require(:article).permit(:title, :body, :level, :image, tag_ids: [])
    end

end
