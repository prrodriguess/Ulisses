class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	@body_image = "body-image-home"
  end

  def congratulations
  	@body_image = "body-image-congratulations"
  end

  def done
    @goal = Goal.find(params[:id])
    @goal.done = true
    @goal.save
    # @goal.done ? 
    # @goal = Goal.where(done: false).find(params[:goal_id])
    # @goal.done ? true : false
    # if params[:done] == 'false'
		# 	@goal = Goal.where(done: false)
		# else
		# 	render 'show'
		# end
  end

  def failed
    @goal = Goal.find(params[:id])
    @goal.done = false
    @goal.save
    # @goal.done ? 
    # @goal = Goal.where(done: false).find(params[:goal_id])
    # @goal.done ? true : false
    # if params[:done] == 'false'
		# 	@goal = Goal.where(done: false)
		# else
		# 	render 'show'
		# end
  end

  def new
    @page = Page.new
  end

  def show
    @goal = Goal.find(params[:id])
  end
end
