class UsersOrderMailer < ApplicationMailer
  def send_order_summary(params)
    parsed_params = JSON.parse(params)
    @slug = parsed_params['slug']
    @orders_date = parsed_params['created_at']
    @products_array = parsed_params['products']
    @total_price = parsed_params['total_price']
    @shipping_details = parsed_params['orders_shipping_details']
    email = @shipping_details['email']

    mail(to: email, subject: 'Order summary from eshop')
  end
end
