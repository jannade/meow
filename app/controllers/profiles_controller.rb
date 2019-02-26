class ProfilesController < ApplicationController
  def index
    @recommended_profiles = recommended_profiles
    @user = current_user
    @profiles = find_mentor_by_interests((params[:professional_interests]), (params[:personal_interests]))
  end

  def new
  end

  def create
  end

  def show
    @profile = Profile.find(params[:id])
    session[:mentor_profile] = params[:id]

    @mentee_profile = Profile.find_by(user: current_user, is_mentor: false)
    @profile_interests = ProfileInterest.where(profile: @profile)
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
    Profile.where(is_mentor: true).each do |profile|
      profile.user.interests.each do |interest|
        matched_interest << interest if current_user.interests.include? interest
      end

      match_percentage = (matched_interest.count.to_f / current_user.interests.count.to_f) * 100
      recommended << profile if match_percentage >= 50

      matched_interest = []
    end

    recommended
  end

  private

  def find_mentor_by_interests(first_interest, second_interest)
    if first_interest == "All" && second_interest != "All"
      Profile.joins(:interests).where(interests: { name: "#{second_interest}"}).where(is_mentor: true)
    elsif first_interest != "All" && second_interest == "All"
      Profile.joins(:interests).where(interests: { name: "#{first_interest}"}}).where(is_mentor: true)
    elsif first_interest == "All" && second_interest == "All"
      Profile.all.where(is_mentor: true)
    else
      Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest })).where(is_mentor: true)
    end
  end
end
