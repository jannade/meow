class MilestonesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def mark
    @milestone = Milestone.find(params[:format])
    @milestone.is_completed = !@milestone.is_completed
    @milestone.save
  end

end
