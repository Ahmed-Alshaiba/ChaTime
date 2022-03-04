class ApplicationController < ActionController::Base
  def require_user
    if !user_signed_in?
      flash[:alert] = "You must be logged-in to preforme this action"
      redirect_to new_user_session_path
    end
  end
end
