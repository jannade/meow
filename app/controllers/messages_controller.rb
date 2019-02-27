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

    if params[:connection_id].present?
      @message.connection = Connection.find(params[:connection_id])
      if @message.save
        respond_to do |format|
          format.js
          format.html { redirect_to messages_path }
        end
      end
    else
      @mentor = Profile.find(session[:mentor_profile])
      @mentee = Profile.find_by(user: current_user, is_mentor: false)
      raise
      new_connection = Connection.new(mentor_id: @mentor.id, mentee_id: @mentee.id)
      @message.connection = new_connection if new_connection.save
      if @message.save
        flash[:notice] = "Message sent"
        redirect_to profile_path(@mentor)
      else
        render :new
      end
    end
  end

  def destroy
    @message.delete
    redirect_to messages_path
  end

  private

  def message_params
    params.require(:message).permit(:content, :connection, :is_read)
  end
end
