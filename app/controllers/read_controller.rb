class ReadController < ApplicationController
  def openemail
    @email = Email.find_by(id: params[:id])
  end
end