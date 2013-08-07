class EmailsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def parse
    puts "****************************"
    puts params[:to]
    puts " "
    puts params[:from]
    puts " "
    puts params[:subject]
    puts " "
    puts params[:html]
    puts "****************************"

    Emailer.send_email(params).deliver
    
    render :json => { "message" => "OK" }, :status => 200
  end
end