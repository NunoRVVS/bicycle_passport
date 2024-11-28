class RidesController < ApplicationController
  def index
    @rides = Ride.all
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    if @ride.save
      redirect_to ride_path(@ride), notice: 'Ride was successfully created.'
    else
      render :new
    end
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    if @ride.update(ride_params)
      redirect_to ride_path(@ride), notice: 'Ride was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to rides_path, notice: 'Ride was successfully destroyed.'
  end

  private

  def ride_params
    params.require(:ride).permit(:start_point, :end_point, :start_date, :end_date, :distance)
  end
end
