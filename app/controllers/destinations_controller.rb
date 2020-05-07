class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.save
    redirect_to destination_path(@destination)
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :description, :location, :date, :first_name, :photo)
  end
end
