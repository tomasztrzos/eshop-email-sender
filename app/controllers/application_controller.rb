class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def index
    render plain: "eshop-email-sender, env: #{Rails.env}"
  end

  def pubsub_adapter
    decoded_parameters = Base64.decode64(params[:message][:data])
    UsersOrderMailer.send_order_summary(decoded_parameters).deliver

    respond_to do |format|
      format.any { render json: { message: 'ok' }, content_type: 'application/json' }
    end
  end
end
