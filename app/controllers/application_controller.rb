class ApplicationController < ActionController::Base
  def log_in_user
    return if user_signed_in?

    redirect_to new_user_session_path, status: :see_other
  end
end
