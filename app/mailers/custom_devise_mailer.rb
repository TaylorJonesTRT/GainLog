class CustomDeviseMailer < Devise::Mailer
  include Devise::Controllers::UrlHelpers

  default template_path: "devise/mailer"

  helper do
    def frontend_reset_password_url(token)
      host = Rails.env.production? ? "https://gainlog.taylorwjones.com" : "http://localhost:5173"
      "#{host}/auth/password-reset?reset_password_token=#{token}"
    end
  end
end
