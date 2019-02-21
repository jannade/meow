class ProfilesController < ApplicationController

  def index
    @profiles = Profile.where(is_mentor: true)
    if params[:query].present?
      sql_query = " \
        spaces.name @@ :query \
        OR spaces.location @@ :query \
        AND spaces.category @@ :category \
      "
      @profiles = Profile.where(sql_query, category: "%#{params[:category]}%", query: "%#{params[:query]}%")
    else
      @profiles = Profile.all
    end
  end

  def new
    #the third page in the signup form
  end

  def create
    #the third page in the signup form
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
