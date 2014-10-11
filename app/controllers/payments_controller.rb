class PaymentsController < ApplicationController
  def new
    @bt_client_token = Braintree::ClientToken.generate
    @payment = Donation.new
  end

  def create
    @result = Braintree::Transaction.sale(
      amount: params[:amount],
      payment_method_nonce: params[:payment_method_nonce]
    )
  end
end
