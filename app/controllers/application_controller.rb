class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless current_user && current_user.admin
      flash[:warning] = "Woof! You have to be an administrator to perform that function."
      redirect_to root_path
    end
  end
end
