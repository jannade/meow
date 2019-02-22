class ProfilesController < ApplicationController
  def index

    # First time user go to browse page, they will see their recommended mentors
    # if professional interest is all and personal interest is not all, show mentors with any professional interest with the filtered personal interest
    # if personal interest is all and professional interest is not all, show mentors with any personal interest with the filtered professional interest
    # if personal interest and professional interest is all show all mentors

    # matchmaking algorithm
    # match mentors and user based on the percentage in their interest match
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

  private

  def percentage(mentor_interest, mentee_interest)
    matched_interest = []
    mentor_interest.each do |element|
      matched_interest << if element.include? mentee_interest
      end
    end
    (matched_interest.count/mentee_array.count)*100
  end

  # create a list in the browser page
  # the higher the number of percentage, put the mentor in the top for recommended mentor
  # create a button for clear filter
end
