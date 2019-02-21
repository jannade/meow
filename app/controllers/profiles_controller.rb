class ProfilesController < ApplicationController

  def index
    @mentors = Profile.where(is_mentor: true)
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
