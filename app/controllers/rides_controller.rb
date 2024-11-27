class RidesController < ApplicationController
  def show
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
    @user = current_user
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    @ride.update(ride_params)

    redirect_to ride_path(@ride)
  end

  def create
    @ride = Ride.new(ride_params)
    @user = current_user
    @ride.user = current_user
    @ride.save
    redirect_to user_ride_path(@user, @ride)
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to rides_path, status: :see_other
  end

  private

  def ride_params
    params.require(:ride).permit(:name, :start_lat, :start_long, :end_lat, :end_long, :start_date, :start_time, :end_time, :end_date, :distance, :user)
  end
end
