class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :edit, :update, :destroy]
  before_action :set_unique_code, only:[:show]

  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
    @user = current_user
    @bicycle = Bicycle.find(params[:id])
    @maintenances = Maintenance.where(bicycle: @bicycle.id)
    @featured_maintenances = Maintenance.where(bicycle: @bicycle.id).first(5)
    @rides = Ride.where(user_id: current_user)
    @featured_rides = Ride.where(user_id: current_user).first(5)
    @components = Component.all
    @featured_components = Component.first(4)

    @warranty = Warranty.where(bicycle: @bicycle).first
    @insurance = InsurancePolicy.where(bicycle: @bicycle).last

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
    @unique_code = set_unique_code
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
    redirect_to root_path
  end

  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def update

    if params[:bicycle][:favourite] == "true"
      Bicycle.all.reject { |b3| b3 == @bicycle }.select {|bike| bike.user == current_user}.each do |b2|
        b2.favourite = false
        b2.save
      end

      @bicycle.favourite = true
    end

    @bicycle.update(bicycle_params)
    redirect_to bicycle_path(@bicycle)
  end

  def destroy
    @bicycle.destroy
    redirect_to bicycles_path, status: :see_other
  end

  def new_code
    @user = current_user
  end

  def new_code_validation
    @bicycle = Bicycle.new()
    @bicycle.favourite = true
    @bicycle.make = "Specialized"
    @bicycle.serial_number = "1337-t00c00l-b1k3"
    @bicycle.verified = true
    @bicycle.user = current_user
    @bicycle.category = "Road"
    @bicycle.description = "S-Works Aethos Shimano Dura-Ace Di2"
    url = "https://res.cloudinary.com/dhyc7cqxl/image/upload/v1733242081/00_AETHOS-SW_djz3tp.png"

    file = URI.parse(url).open
    @bicycle.photo.attach(io: file, filename: "00_AETHOS-SW.png", content_type: "image/png")
    @bicycle.save
  end

private

def set_unique_code
  @share_link = "https://bikepass.xyz/"
    6.times do
      @share_link += ('a'..'z').to_a.sample
      @share_link += ('1'..'9').to_a.sample
    end
    return @share_link
end

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

  def bicycle_params
    params.require(:bicycle).permit(:name, :category, :serial_number, :make, :description, :user_id, :photo, :favourite)
  end

end
