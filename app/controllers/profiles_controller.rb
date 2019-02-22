class ProfilesController < ApplicationController

  def index
    @mentors = Profile.where(is_mentor: true)
  end

  def new
  end

  def create
  end

  def show
    @profile = Profile.find(params[:id])
    session[:mentor_profile] = params[:id]
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
