class MilestonesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.description = params[:milestone][:description]
    @milestone.goal = Goal.find(params[:goal_id])
    @milestone.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def mark
    @milestone = Milestone.find(params[:id])
    @milestone.is_completed = !@milestone.is_completed
    @milestone.save

    @goal = @milestone.goal
  end

  private

  def milestone_params
    params.require(:milestone).permit(:description, :is_completed)
  end

end
