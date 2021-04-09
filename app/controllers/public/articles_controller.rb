class Public::ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def index
    @articles = Article.where(level: "初級")
  end

  def create
    article = Article.new(article_params)
    article.user_id = current_user.id
    article.save
    redirect_to article_path(article)
  end

  def show
    @article = Article.find(params[:id])
    @reading_time = @article.reading_time
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
  

  private

    def article_params
      params.require(:article).permit(:title, :body, :level)
    end

end
