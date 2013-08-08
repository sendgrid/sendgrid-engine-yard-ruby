class Emailer < ActionMailer::Base
  default :from => "elmer.thomas@sendgrid.com"
  
  def send_email(email)  
    # Contruct the URL to where the email is stored on the web
    # Replace [DOMAIN] with your own, e.g. http://www.sendgrid.com
    @url = "http://[DOMAIN]?read=" + email.id.to_s
    subject = "re: " + email.from
    mail(:to => email.from, :subject => subject)
  end
end