class MessagesController < ApplicationController
  def index
    @mentor_connections = Connection.where(mentee: current_user.mentee_profile)
    @mentee_connections = Connection.where(mentor: current_user.mentor_profile)
    @message = Message.new

    @goal = Goal.new
  end

  def show
  end

  def new
    @message = Message.new
    @mentor = Profile.find(session[:mentor_profile])
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @mentor = Profile.find(session[:mentor_profile])
    @mentee = Profile.where(user: current_user).first

    if connection_exists?
      @message.connection = existing_connection
    else
      new_connection = Connection.new(mentor_id: @mentor.id, mentee_id: @mentee.id)
      @message.connection = new_connection if new_connection.save
    end

    if @message.save
      flash[:notice] = "Message sent"
      redirect_to profile_path(@mentor)
    else
      render :new
    end
  end

  def destroy
    @message.delete
    redirect_to messages_path
  end

  private

  def connection_exists?
    Connection.where(mentor_id: @mentor.id, mentee_id: @mentee.id).exists?
  end

  def existing_connection
    Connection.where(mentor_id: @mentor.id, mentee_id: @mentee.id).first
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
