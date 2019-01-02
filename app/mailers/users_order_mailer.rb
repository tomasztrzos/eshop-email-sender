class UsersOrderMailer < ApplicationMailer
  def send_order_summary(email, params)
    pubsub_msg = params['message']['attributes']
    @orders_date = pubsub_msg['created_at']
    @products_array = pubsub_msg['products']
    @total_price = pubsub_msg['total_price']
    @shipping_details = pubsub_msg['orders_shipping_details']

    mail(to: email, subject: 'Order summary from trzos-tomasz.pl')
  end
end
