class UsersRidesController < ApplicationController
  def new
    @ride = Ride.find(params[:ride_id])
    @bike = Bicycle.find(params[:bicycle_id])
    @user = current_user
    @user_ride = UsersRide.new
  end

  def create
    @ride = Ride.find(params[:ride_id])
    @bike = Bicycle.find(params[:bicycle_id])
    @user = current_user
    @users_ride = UsersRide.new(users_ride_params)
    @users_ride.user = @user
    @users_ride.ride = @ride
    @users_ride.bycicle = @bike
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def order_params
    params.require(:users_ride).permit()
  end
end
