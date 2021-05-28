class PaymentsController < ApplicationController
    def new
      @body_image = "body-image-transaction-new"
      @goal = Goal.where(state: 'pending').find(params[:goal_id])
    end
  end