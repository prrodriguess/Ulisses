class TransactionsController < ApplicationController
    def create
        weight_goal = WeightGoal.find(params[:weight_goal_id])
        transaction  = Transaction.create!(amount: weight_goal.price, state: 'pending', user: current_user)
      
        session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [{
            name: current_user.name,
            amount: weight_goal.price_cents,
            currency: 'brl'
          }],
          success_url: transaction_url(transaction),
          cancel_url: transaction_url(transaction)
        )
      
        transaction.update(checkout_session_id: session.id)
        redirect_to new_transaction_payment_path(transaction)
      end

      def show
        @transaction = current_user.transaction.find(params[:id])
      end
end
