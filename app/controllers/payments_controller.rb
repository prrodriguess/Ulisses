class PaymentsController < ApplicationController
    def new
      @transaction = current_user.transaction.where(state: 'pending').find(params[:transaction_id])
    end
  end