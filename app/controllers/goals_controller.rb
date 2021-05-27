class GoalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :new ]
  before_action :set_goal, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :set_transaction, only: [:destroy]

  def index
    @body_image = "body-image-index"
    @goals = Goal.all
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = @user.id
    if @goal.save
      redirect_to goal_path(@goal)
    else
      render "new"
    end
  end

  def new
    @body_image = "body-image-weigth-goals"
    @goal = Goal.new(title: params[:goal])
  end

  def edit
  end

  def show
    @body_image = "body-image-show"
    @goal = Goal.find(params[:id])
  end

  def update
    @goal.update(goal_params)
    redirect_to goal_path(@goal)
  end

  def destroy
    @transaction.destroy
    @goal.destroy
    redirect_to goals_path
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:deadline, :penalty, :title)
  end
end
