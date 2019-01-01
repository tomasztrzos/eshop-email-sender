class UsersOrderMailer < ApplicationMailer
  def send_order_summary(email, params)
    # @slug = Base64.decode64(params[:message][:attributes][:slug])
    @params = params.to_s
    mail(to: email, subject: 'Order summary from trzos-tomasz.pl')
  end
end
