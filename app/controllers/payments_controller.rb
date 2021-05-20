class PaymentsController < ApplicationController
    def new
      @transaction = Transaction.where(state: 'pending').find(params[:transaction_id])
    end
  end