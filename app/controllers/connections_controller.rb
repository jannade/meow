class ConnectionsController < ApplicationController

  def show
    @connection = Connection.find(params[:id])
  end

  def new
    @connection = Connection.new
  end

  def create
    # @connection = Connection.new(connection_params)
    # @connection.mentee =
    # @connection.mentor =

    # if @connection.save
    #   redirect_to
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def mentor_connections
  end

  def mentee_connections
  end

  private

  def connection_params
    params.require(:connection).permit(:status, :mentee_id, :mentor_id)
  end
end
