# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SgEyRuby::Application.initialize!

SgEyRuby::Application.configure do

  ActionMailer::Base.default :content_type => "text/html"

  config.action_mailer.delivery_method = :smtp
  # config.action_mailer.default_charset = "utf-8"
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
       :authentication => :plain,
       :address => "smtp.sendgrid.net",
       :port => 587,
       :domain => "sendgrid.com",
       :user_name => ENV["SENDGRID_USERNAME"],
       :password => ENV["SENDGRID_PASSWORD"]
  }
end