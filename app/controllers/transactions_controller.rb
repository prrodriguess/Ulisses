class TransactionsController < ApplicationController
    before_action :set_user

    def create
        goal = Goal.find(params[:goal_id])
        transaction  = Transaction.create!(amount: goal.penalty, state: 'pending', goal_id: goal.id, user: current_user)
      
        session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [{
            name: current_user.name,
            amount: goal.penalty,
            currency: 'brl',
            quantity: '1'
          }],
          success_url: transaction_url(transaction),
          cancel_url: transaction_url(transaction)
        )
      
        transaction.update(checkout_session_id: session.id)
        redirect_to new_transaction_payment_path(transaction)
      end

      def show
        @transaction = Transaction.find(params[:id])
      end

      private

      def set_user
        @user = current_user
      end
end
