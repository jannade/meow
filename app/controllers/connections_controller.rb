class ConnectionsController < ApplicationController

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

  def mentor_connections
  end

  def mentee_connections
  end

  private

  def connection_params
    params.require(:connection).permit(:status)
  end
end
