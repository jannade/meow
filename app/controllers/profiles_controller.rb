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
    if @profile.save
      redirect_to root_path
    else
      render :new
    end

    # @profile_interest = Profile_interest.new(profile_interest_params)
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

  def profile_interest_params
    params.require(:profile_interest).permit(:interest_id)
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
  # create a list in the browser page
  # the higher the number of percentage, put the mentor in the top for recommended mentor
  # create a button for clear filter
end
