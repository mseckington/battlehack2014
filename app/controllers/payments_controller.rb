class PaymentsController < ApplicationController
  def show
    @bt_client_token = Braintree::ClientToken.generate
  end

  def create
    result = Braintree::Transaction.sale(
      amount: '100.00',
      payment_method_nonce: params[:payment_method_nonce]
    )
  end
end
