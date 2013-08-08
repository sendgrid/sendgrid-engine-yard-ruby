class EmailsController < ApplicationController
  # Since this controller is just exposing an API enpoint, we can skip the token authentication
  skip_before_filter  :verify_authenticity_token

  # For all available @params see: http://sendgrid.com/docs/API_Reference/Webhooks/parse.html
  def parse

    email = Email.new
    email.to = params[:to]
    email.from = params[:from]
    email.date = Time.now
    email.message = params[:subject] + "<br /><br />" + params[:html]
    email.save

    Emailer.send_email(params, email).deliver
    
    render :json => { "message" => "OK" }, :status => 200
  end
end