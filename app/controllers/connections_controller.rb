class ConnectionsController < ApplicationController
  def index
    @mentor_connections = Connection.where(mentee: current_user.mentee_profile)
    @mentee_connections = Connection.where(mentor: current_user.mentor_profile)
  end

  def show
    @connection = Connection.find(params[:id])
  end

  def new
    @connection = Connection.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def connection_params
    params.require(:connection).permit(:status)
  end
end
