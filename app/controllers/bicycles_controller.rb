class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :edit, :update, :destroy]

  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
    @user = current_user
    @bicycle = Bicycle.find(params[:id])
    @maintenances = Maintenance.where(bicycle: @bicycle.id)
    @featured_maintenances = Maintenance.where(bicycle: @bicycle.id).first(3)
    @rides = Ride.where(user_id: current_user)
    @featured_rides = Ride.where(user_id: current_user).first(5)
    @components = Component.all
    @featured_components = Component.first(4)

    @ride = @rides.first
    if !@ride.nil?
      @markers = [ {
        lat: @ride.start_lat,
        lng: @ride.start_long
      },{
        lat: @ride.end_lat,
        lng: @ride.end_long
      }]
    end
  end

  def bicycle_rack
  @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
  end

  def new
    @bicycle = Bicycle.new
  end

  def create

    @bicycle = Bicycle.new(bicycle_params)

    if params[:bicycle][:favourite] == "true"
      Bicycle.all.select {|bike| bike.user == current_user}.each do |b2|
        b2.favourite = false
        b2.save
      end
    end
    @bicycle.user = current_user
    @bicycle.save
    redirect_to bicycle_path(@bicycle)
  end

  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def update

    if params[:bicycle][:favourite] == "true"
      Bicycle.all.select {|bike| bike.user == current_user}.each do |b2|
        b2.favourite = false
        b2.save
      end
    end
    @bicycle.update(bicycle_params)
    redirect_to bicycle_path(@bicycle)
  end

  def destroy
    @bicycle.destroy
    redirect_to bicycles_path, status: :see_other
  end

private

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:name, :category, :serial_number, :make, :description, :user_id, :photo, :favourite)
  end

end
