class PaymentsController < ApplicationController
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

    amount = params[:amount].to_f * 100

    @payment = Donation.create(price: amount.to_i, list_id: params[:list_id])
  end

  def update
    payment = Donation.find(params[:payment_id])
    payment.message = params[:message]
    payment.twitter_id = params[:twitter_id]
    payment.save

    #TODO: Add flash message final thankyou and go to actual list
    redirect_to lists_path
  end
end
