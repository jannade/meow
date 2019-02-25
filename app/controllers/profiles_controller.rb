class ProfilesController < ApplicationController
  def index
    find_mentor_by_interests(params[:professional_interests], params[:personal_interests])
  end

  def new
    @profile = Profile.new
    @pro_interests = Interest.where(category: 'professional')
    @personal_interests = Interest.where(category: 'personal')
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params)
    @profile.user = @user
    @user.company = params[:user][:company]
    @user.job_title = params[:user][:job_title]
    @user.save

    if @profile.save
      redirect_to mentors_path
    else
      render :new
    end

    add_profile_interests(params[:profile][:interests])
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

  def profile_params
    params.require(:profile).permit(:is_mentor, :description, :user_id)
  end

  def add_profile_interests(interest_ids)
    interest_ids.each do |id|
      interest = Interest.find(id)
      ProfileInterest.create!(profile: @profile, interest: interest)
    end
  end

  def percentage(mentor_interest, mentee_interest)
    matched_interest = []
    mentor_interest.each do |element|
      matched_interest << if element.include? mentee_interest
      end
    end
    (matched_interest.count/mentee_array.count)*100
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
end
