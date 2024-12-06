class RidesController < ApplicationController
  def index
    @rides = Ride.all
    @user = current_user
    @users = User.all
  end

  def show
    @ride = Ride.find(params[:id])
    @user = current_user
    @users_rides_this_ride = UsersRide.where(ride_id: @ride )
    @ids_of_participants = [];
    @bikes_of_participants = [];
    @users_rides_this_ride.map do |participant|
      if !@ids_of_participants.include?(participant.user_id)
        @ids_of_participants << participant.user_id
        @bikes_of_participants << participant.bicycle
      end

    end

    @user_was_on_ride = @ids_of_participants.include?(@user.id)
    # @users_on_ride = User.all.select {|user| user.id == current_user}
    # @users_on_ride = User.all.reject{ |user| user.id == current_user.id}


    @markers = [ {
      lat: @ride.start_lat,
      lng: @ride.start_long
    },{
      lat: @ride.end_lat,
      lng: @ride.end_long
    }]

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
    @ride.update(ride_params_from_form)
    redirect_to ride_path(@ride)
  end

  def create
    @ride = Ride.new(ride_params_from_form)
    @user = current_user
    @ride.user = current_user
    @ride.save
    redirect_to my_rides_path
 end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to rides_path, status: :see_other
  end

  def my_rides
    @rides = Ride.select {|ride| ride.user == current_user}
    @user = current_user
  end

  private

  def ride_params
    params.require(:ride).permit(:name, :start_lat, :start_long, :end_lat, :end_long, :start_date, :start_time, :end_time, :end_date, :distance, :user, :photo)
  end

  def ride_params_from_form
    result_start = Geocoder.search(params[:ride][:start_lat])
    result_end = Geocoder.search(params[:ride][:end_lat])

    params[:ride][:start_lat] = result_start.first.coordinates[0].to_f
    params[:ride][:start_long] = result_start.first.coordinates[1].to_f
    params[:ride][:end_lat] = result_end.first.coordinates[0].to_f
    params[:ride][:end_long] = result_end.first.coordinates[1].to_f

    ride_params
   # params.require(:ride).permit(:name, :start_lat, :start_long, :end_lat, :end_long, :start_date, :start_time, :end_time, :end_date, :distance, :user)
  end
end
