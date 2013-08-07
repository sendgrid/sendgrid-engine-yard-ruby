class EmailsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def parse

    Emailer.send_email(params).deliver
    
    render :json => { "message" => "OK" }, :status => 200
  end
end