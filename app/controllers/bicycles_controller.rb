class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :edit, :update, :destroy]

  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
    @user = current_user
    @bicycle = Bicycle.find(params[:id])
  end

  def bike_rack
  @bicycles = Bicycle.all.select { |bike| bike.user == current_user }
  end

  def new
    @bicycle = Bicycle.new
  end

  def create

    @bicycle = Bicycle.new(bicycle_params)
    @bicycle.user = current_user
    @bicycle.save
    redirect_to bicycle_path(@bicycle)
  end

  def edit
  end

  def update
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
    params.require(:bicycle).permit(:name, :category, :serial_number, :make, :description, :user_id, :photo)
  end

end
