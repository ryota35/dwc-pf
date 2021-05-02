class Public::ItemsController < ApplicationController

  def index
    @users = User.where.not(itemimage_id: nil).page(params[:page]).per(8)
  end

end
