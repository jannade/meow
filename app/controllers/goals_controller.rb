class GoalsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @goal = Goal.new(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.connection = Connection.find(params[:connection_id])

    if @goal.save
      redirect_to connection_path(@goal.connection)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def goal_params
    params.require(:goal).permit(:description, :connection)
  end


end
