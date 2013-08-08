class Emailer < ActionMailer::Base
  default :from => "elmer.thomas@sendgrid.com"
  
  def send_email(params)  
    mail(:to => params[:from], :subject => 'A message form the SendGrid EngineYard demo')
  end
end