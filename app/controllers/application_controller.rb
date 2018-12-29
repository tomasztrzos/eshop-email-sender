class ApplicationController < ActionController::Base
  def index
    render plain: "eshop-email-sender, env: #{Rails.env}"
  end
end
