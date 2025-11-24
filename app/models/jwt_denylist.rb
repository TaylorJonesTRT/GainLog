class JwtDenylist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Denylist

  self.table_name = "jwt_denylists"

  # def self.jwt_revoked?(payload, user)
  #   super || token_expired?(payload)
  # end
  #
  # def self.token_expired
  #   exp_time = Time.at(payload["exp"].to_i)
  #   exp_time < Time.now
  # end
end
