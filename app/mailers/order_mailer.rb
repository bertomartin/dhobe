class OrderMailer < ActionMailer::Base
  default from: "dhobe@gmail.com"

  def order_confirmation order
    @order = order
    mail to: order.user.email, subject: "Your order (##{order.id}), from DhobE.com"
  end

  def state_changed order, previous_state
    @order = order
    @previous_state = previous_state
    mail to: order.user.email, subject: "Your order (##{order.id})has changed!"
  end
end
