class Emailer < ActionMailer::Base
  default :from => "elmer.thomas@sendgrid.com"
  
  def send_email(user)
    @name = user[:name]  
    mail(:to => user[:from], :subject => 'Thanks for signing up')
  end
end