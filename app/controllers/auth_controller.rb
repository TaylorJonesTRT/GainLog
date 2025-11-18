class Api::AuthController < ApplicationController
  before_action :authenticate_user!

  def verify
    render json: {
      authenticated: true,
      user: {
        id: current_user.id,
        email: current_user.email
      }
    }
  end
end
