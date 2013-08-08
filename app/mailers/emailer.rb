class Emailer < ActionMailer::Base
  default :from => "elmer.thomas@sendgrid.com"
  
  def send_email(params, email)  
    @url = EY::Config.get('base', 'domain_name') + "/" + "?read=" + email.id
    subject = "re: " + params[:from]
    mail(:to => params[:from], :subject => subject)
  end
end