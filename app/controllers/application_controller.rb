class ApplicationController < ActionController::Base
  protected

  def after_sign_out_path_for(_scope)
    '/'
  end
end
