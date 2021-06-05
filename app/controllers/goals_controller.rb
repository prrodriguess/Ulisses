class GoalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :new]
  before_action :store_url, only: [:new]
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    @body_image = "body-image-index"
    @goals = Goal.all
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = @user.id
    if @goal.save
      GoalMailer.with(goal: @goal).new_goal_email.deliver_now

      # goal = Goal.find(params[:goal_id])
      @goal.state = 'pending'
      @goal.user = current_user
      # goal = Goal.create!(state: 'pending', user: current_user)
    
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: current_user.name,
          amount: @goal.penalty * 100,
          currency: 'brl',
          quantity: '1',
          description: "Você só será cobrado se não cumprir sua meta dentro do prazo."
        }],
        success_url: request.base_url + "/congratulations",
        cancel_url: goal_url(@goal),
        customer_email: current_user.email
      ) 
      
      flash[:success] = "Thank you for your wishes! We'll get contact you soon!"
      @goal.update(checkout_session_id: session.id)
      User.create(email: @goal.referee, password: "123456")
      redirect_to new_goal_payment_path(@goal)
    else
      flash.now[:error] = "Your mailer form had some errors. Please check the form and resubmit."
      render "new"
    end

  end

  def new
    unless current_user.present? 
      redirect_to new_user_session_path
    end
      @body_image = "body-image-weigth-goals"
      @goal = Goal.new(title: params[:goal])
  end

  def edit
  end

  def show
    @body_image = "body-image-show"
    @goal = Goal.find(params[:id])
    # if Transaction.where(goal: @goal).count.zero?
    #   redirect_to new_transaction_path(goal_id: @goal.id)
    #   return
    # end
  end

  def update
    @goal.update(goal_params)
    redirect_to goal_path(@goal)
  end

  def destroy
    @goal.destroy
    redirect_to goals_path
  end

  private

  def store_url
    session["redirect_to"] = request.original_url
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def goal_params
    params.require(:goal).permit(:deadline, :penalty, :title, :referee)
  end
end
