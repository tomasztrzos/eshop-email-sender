class ApplicationController < ActionController::Base
  def index
    render plain: "eshop-email-sender, env: #{Rails.env}"
  end
end


def send_email_with_order
  if false # FIXME: params[:token] != PUBSUB_VERIFICATION_TOKEN
    render json: { error: 'Unauthorized' }, status: :unprocessable_entity
  else
    # slug = Base64.decode64(params[:message][:data])

    # if EmailSenderService.new.subscribe_contact(slug)
    #   render json: {}, status: :ok
    # else
    #   render json: { error: 'Subscription failed' }, status: :unprocessable_entity
    # end
  end
end
