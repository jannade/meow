class ProfilesController < ApplicationController
  def index
    # @recommended_profiles = recommended_profiles
    # @user = current_user

    if params[:professional_interests].present? || params[:personal_interests].present?
      @profiles = find_mentor_by_interests((params[:professional_interests]), (params[:personal_interests]))
    else
      @profiles = recommended_profiles
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
    @user.company = params[:user][:company]
    @user.job_title = params[:user][:job_title]
    @user.photo = params[:user][:photo]
    @user.update(user_params)

    if @profile.save
      redirect_to new_mentee_path
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

  def add_profile_interests(interest_ids)
    interest_ids.each do |id|
      interest = Interest.find(id)
      ProfileInterest.create!(profile: @profile, interest: interest)
      matched_interest = []
    end
    recommended
  end

  private

  def find_mentor_by_interests(first_interest, second_interest)
    if first_interest == "All" && second_interest != "All"
      Profile.joins(:interests).where(interests: { name: "#{second_interest}"}).where(is_mentor: true)
    elsif first_interest != "All" && second_interest == "All"
      Profile.joins(:interests).where(interests: { name: "#{first_interest}"}).where(is_mentor: true)
    elsif first_interest == "All" && second_interest == "All"
      Profile.all.where(is_mentor: true)
    else
      Profile.joins(:interests).where(interests: { name: first_interest, name: second_interest }).where(is_mentor: true)
      # Profile.joins(:interests).where(interests: { name: first_interest}).or(Profile.joins(:interests).where(interests: {name: second_interest })).where(is_mentor: true)
    end
  end
end








