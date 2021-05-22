class WeightGoalsController < ApplicationController
  before_action :set_weight_goal, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :set_transaction, only: [:destroy]

  def index
    @weight_goals = WeightGoal.all
  end

  def create
    @weight_goal = WeightGoal.new(weight_goal_params)
    @weight_goal.user_id = @user.id
    if @weight_goal.save
      redirect_to weight_goal_path(@weight_goal)
    else
      render "new"
    end
  end

  def new
    @body_image = "body-image-weigth-goals"
    @weight_goal = WeightGoal.new
  end

  def edit
  end

  def show
    @weight_goal = WeightGoal.find(params[:id])
  end

  def update
    @weight_goal.update(weight_goal_params)
    redirect_to weight_goal_path(@weight_goal)
  end

  def destroy
    @transaction.destroy
    @weight_goal.destroy
    redirect_to weight_goals_path
  end

  private

  def set_weight_goal
    @weight_goal = WeightGoal.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def weight_goal_params
    params.require(:weight_goal).permit(:current, :desired, :deadline, :penalty, :price, :weight_goals_title)
  end
end
