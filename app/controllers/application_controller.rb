class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def index
    render plain: "eshop-email-sender, env: #{Rails.env}"
  end

  def pubsub_adapter
    UsersOrderMailer.send_order_summary('trzos.tomasz@gmail.com', params).deliver

    respond_to do |format|
      format.any { render json: { message: 'ok' }, content_type: 'application/json' }
    end
  end

  # def send_email_with_order
  #   if false # FIXME: params[:token] != PUBSUB_VERIFICATION_TOKEN
  #     render plain: 'error: Unauthorized', status: :unprocessable_entity
  #   else
  #     Rails.logger.info '=> STARTED PROCESSING MESSAGE FROM PUB/SUB'
  #     Rails.logger.info params.to_s
  #     slug = Base64.decode64(params[:message][:attributes][:slug])
  #     Rails.logger.info slug.to_s
  #     Rails.logger.info '<= FINISHED PROCESSING MESSAGE FROM PUB/SUB'
  #     render plain: 'ok', status: :ok
  #
  #     # if EmailSenderService.new.subscribe_contact(slug)
  #     #   render json: {}, status: :ok
  #     # else
  #     #   render json: { error: 'Subscription failed' }, status: :unprocessable_entity
  #     # end
  #   end
  # end
end
