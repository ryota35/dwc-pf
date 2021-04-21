class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admins_articles_path
    when User
      user_path(current_user)
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
