class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
    @user = current_user
    @bicycle = @bicycles.select {|bike| bike.favourite == true}.first
    if !@bicycle.nil?
    @maintenances = Maintenance.where(bicycle: @bicycle.id)
    @featured_maintenances = Maintenance.where(bicycle: @bicycle.id).first(3)
    @components = Component.all
    @featured_components = Component.first(4)
    end

    @rides = Ride.where(user_id: current_user)
    @featured_rides = Ride.where(user_id: current_user).first(5)
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

    if !@user.nil?
      if @bicycle.nil?
        redirect_to bicycle_rack_path
      end
    end
  end
end
