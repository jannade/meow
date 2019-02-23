class ProfilesController < ApplicationController
  def index
    @profiles = find_mentor_by_interests((params[:professional_interests]), (params[:personal_interests]))

    @recommended_profiles = recommended_profiles
    raise
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



  def recommended_profiles
    matched_interest = []
    recommended = []
    Profile.where(is_mentor: true).map do |profile|

      profile.interests.each do |interest|

      matched_interest << interest.name if current_user.interests.include? interest
      end
    match_percentage = (matched_interest.count / current_user.interests.count) * 100
    if match_percentage > 50
      recommended << profile
    end
    recommended
  end

  end

  private

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
end
