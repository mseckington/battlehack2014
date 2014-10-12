class PaymentsController < ApplicationController
  include ActionView::Helpers::NumberHelper
  include PriceHelper

  def new
    @bt_client_token = Braintree::ClientToken.generate
    @payment = Donation.new
    @list = List.find(params[:list_id])
  end

  def create
    Braintree::Transaction.sale(
      amount: params[:amount],
      payment_method_nonce: params[:payment_method_nonce]
    )

    @amount = params[:amount].to_f * 100

    @payment = Donation.create(price: @amount.to_i, list_id: params[:list_id])

    notify!
  end

  def update
    payment = Donation.find(params[:payment_id])
    payment.message = params[:message]
    payment.twitter_id = params[:twitter_id]
    payment.save

    #TODO: Add flash message final thankyou and go to actual list
    redirect_to list_path(payment.list)
  end

  private

  def notify!
    notify_sms
    notify_email
  end

  def notify_email
    sendgrid = SendGrid::Client.new do |c|
      c.api_user = Rails.application.secrets[:sendgrid][:username]
      c.api_key = Rails.application.secrets[:sendgrid][:password]
    end

    mail = SendGrid::Mail.new do |m|
      m.to = 'nextgengames@gmail.com'
      m.from = 'donations@weddingly.st'
      m.subject = 'You got a donation!'
      m.text = "You got a #{formatted_price(@amount.to_i)} donation towards your wedding list"
    end

    sendgrid.send mail
  end

  def notify_sms
    twilio = Twilio::REST::Client.new
    twilio.messages.create(
      from: '+442033225996',
      to: '+447956196237',
      body: "You got a #{formatted_price(@amount.to_i)} donation towards your wedding list"
    )
  end
end
