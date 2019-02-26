class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:professional_interests].present? || params[:personal_interests].present?
      @profiles = find_mentor_by_interests((params[:professional_interests]), (params[:personal_interests]))
    else
      current_user ? @profiles = recommended_profiles : @profiles = Profile.where(is_mentor: true)
    end
  end

  def new
    @profile = Profile.new
    @user = current_user
    @pro_interests = Interest.where(category: 'professional')
    @personal_interests = Interest.where(category: 'personal')
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params)
    @profile.user = @user

    unless @user.company.present? && @user.job_title.present?
      @user.company = params[:user][:company]
      @user.job_title = params[:user][:job_title]
      @user.photo = params[:user][:photo]
      @user.update(user_params)
    end

    is_mentor_flow = params[:profile][:is_mentor]

    onboard_redirect = is_mentor_flow ? new_mentee_path : mentors_path

    if @profile.save
      redirect_to onboard_redirect
    else
      render :new
    end

    add_profile_interests(params[:profile][:interests])
  end

  def new_mentee
    @profile = Profile.new
    @user = current_user
    @pro_interests = Interest.where(category: 'professional')
    @personal_interests = Interest.where(category: 'personal')
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
      match_percentage = 0
      match_percentage = (matched_interest.count.to_f / current_user.interests.count.to_f) * 100
      recommended << profile if match_percentage >= 70
    end
    recommended
  end

  def user_params
    params.require(:user).permit(:company, :job_title, :photo)
  end

  def profile_params
    params.require(:profile).permit(:is_mentor, :description)
  end

  def add_profile_interests(interest_ids)
    interest_ids.each do |id|
      interest = Interest.find(id)
      ProfileInterest.create!(profile: @profile, interest: interest)
    end
  end

  private

  def find_mentor_by_interests(first_interest, second_interest)
    if first_interest == "All" && second_interest != "All"
      Profile.joins(:interests).where(interests: { name: " #{second_interest}" }).where(is_mentor: true)
    elsif first_interest != "All" && second_interest == "All"
      Profile.joins(:interests).where(interests: { name: " #{first_interest}" }).where(is_mentor: true)
    elsif first_interest == "All" && second_interest == "All"
      Profile.all.where(is_mentor: true)
    else
      Profile.joins(:interests).where(interests: { name: first_interest, name: second_interest }).where(is_mentor: true)
      # Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest })).where(is_mentor: true)
    end
  end
end






