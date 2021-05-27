class PaymentsController < ApplicationController
    def new
      @body_image = "body-image-transaction-new"
      @transaction = Transaction.where(state: 'pending').find(params[:transaction_id])
    end
  end