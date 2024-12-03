class UsersRidesController < ApplicationController
  def new
    @ride = Ride.find(params[:ride_id])
    @user = current_user
    @bikes = Bicycle.where(user_id: current_user)
    @users_ride = UsersRide.new
    # raise
  end

  def index
    @users_rides = UsersRide.all
  end

  def create
    @ride = Ride.find(params[:users_ride][:ride])
    @bike = Bicycle.find(params[:users_ride][:bicycle])
    @user = current_user
    @users_ride = UsersRide.new(users_ride_params)
    @users_ride.user = @user
    @users_ride.ride = @ride
    @users_ride.bicycle = @bike
    @users_ride.save
    redirect_to ride_path(@ride)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def users_ride_params
    params.require(:users_ride).permit(:ride_id, :bicycle_id, :user_id)
  end
end
