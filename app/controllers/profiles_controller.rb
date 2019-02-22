class ProfilesController < ApplicationController
  def index
    @profiles = find_mentor_by_interests((params[:professional_interests]), (params[:personal_interests]))
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
    (matched_interest.count/mentor_array.count)*100
  end

  def find_mentor_by_interests(first_interest, second_interest)
    if first_interest == "All" && second_interest != "All"
      Profile.joins(:interests).where(interests: { name: second_interest}).where(is_mentor: true)
    elsif first_interest != "All" && second_interest == "All"
      Profile.joins(:interests).where(interests: { name: first_interest}).where(is_mentor: true)
    elsif first_interest == "All" && second_interest == "All"
      Profile.all.where(is_mentor: true)
    else
      Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest })).where(is_mentor: true)
    end
  end
  # create a list in the browser page
  # the higher the number of percentage, put the mentor in the top for recommended mentor
  # create a button for clear filter
end
