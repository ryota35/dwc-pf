class Public::CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
    else
      @comments = @article.comments
      redirect_to request.referer
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    comment = @article.comments.find(params[:id])
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end

end
