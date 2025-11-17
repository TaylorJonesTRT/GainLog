class JwtExpirationCheck
  def initialize(app)
    @app = app
  end

  def call(env)
    request = ActionDispatch::Request.new(env)

    if request.headers["Authorization"].present?
      token = request.headers["Authorization"].split(" ").last

      begin
        secret = Rails.application.credentials.devise_jwt_secret_key
        decoded = JWT.decode(
          token,
          secret,
          true,
          {
            algorithm: "HS256",
            verify_expiration: true  # Force expiration check
          }
        )
      rescue JWT::ExpiredSignature
        return [
          401,
          { "Content-Type" => "application/json" },
          [ { error: "Token has expired. Please login again." }.to_json ]
        ]
      rescue JWT::DecodeError => e
        return [
          401,
          { "Content-Type" => "application/json" },
          [ { error: "Invalid token: #{e.message}" }.to_json ]
        ]
      end
    end

    @app.call(env)
  end
end
