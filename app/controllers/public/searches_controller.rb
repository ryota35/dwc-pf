class Public::SearchesController < ApplicationController

  def index
    @search = params[:search]
    @articles = Article.search(params[:search])
  end

end
