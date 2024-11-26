class WarrantiesController < ApplicationController
  # before_action :set_warranty, only: %i[show edit update destroy]
  # before_action :set_bike, only: %i[show edit create]
  def index
    @warranties = Warranty.all
  end

  def edit
  end

  def update
  end

  def show
  end

  def new
    @warranty = Warranty.new
  end

  def create
    @warranty = Warranty.new(insurance_policy_params)
    if @warranty.save
      redirect_to bicycle_path(@bicycle), notice: 'Warranty policy was successfully created.'
    else
      render :new
    end
  end

  def destroy
  end

  private
  def set_warranty
    @warranty = Warranty.find(params[:id])
  end

  def set_bike
    @bike = Bike.find(params[:bicycle_id])
  end

  def warranty_params
    params.require(:warranty).permit(:issuer, :start_date, :end_date, :bicycle_id)
  end
end
