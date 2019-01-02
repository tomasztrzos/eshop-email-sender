class UsersOrderMailer < ApplicationMailer
  def send_order_summary(email, params)
    params = pubsub_msg['message']['attributes']
    @orders_date = params['created_at']
    @products = params['products']
    @total_price = params['total_price']
    @shipping_details = params['orders_shipping_details']

    mail(to: email, subject: 'Order summary from trzos-tomasz.pl')
  end
end
