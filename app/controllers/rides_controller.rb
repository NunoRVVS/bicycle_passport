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
    @ride = Ride.new(ride_params_from_form)
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

  def ride_params_from_form
    result_start = Geocoder.search(params[:ride][:start_lat])
    result_end = Geocoder.search(params[:ride][:end_lat])
    #raise
    params[:ride][:start_lat] = result_start.first.coordinates[0].to_f
    params[:ride][:start_long] = result_start.first.coordinates[1].to_f
    params[:ride][:end_lat] = result_end.first.coordinates[0].to_f
    params[:ride][:end_long] = result_end.first.coordinates[1].to_f

    ride_params
   # params.require(:ride).permit(:name, :start_lat, :start_long, :end_lat, :end_long, :start_date, :start_time, :end_time, :end_date, :distance, :user)
  end
end
