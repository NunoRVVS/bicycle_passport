class WarrantiesController < ApplicationController
  before_action :set_warranty, only: [:edit, :update, :destroy]
  before_action :set_bicycle, only: [:create, :edit, :update, :destroy]

  def index
    @bicycle = Bicycle.find(params[:bicycle_id])
    @warranties = Warranty.where(bicycle_id:@bicycle.id)
  end

  def show
    @warranty = Warranty.find(params[:id])
  end

  def new
    # @warranty = Warranty.new
    @bicycle = Bicycle.find(params[:bicycle_id]) # Find the parent bicycle
    @warranty = @bicycle.warranties.build
  end

  def create
    @bicycle = Bicycle.find(params[:bicycle_id]) # Find the parent bicycle
    @warranty = @bicycle.warranties.build(warranty_params)
    if @warranty.save
      redirect_to bicycle_warranties_path, notice: 'Warranty policy was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @warranty = Warranty.find(params[:id])
    if @warranty.update(warranty_params)
      redirect_to @warranty, notice: 'Insurance policy was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def set_bicycle
    @bicycle = Bicycle.find(params[:bicycle_id])
  end

  def set_warranty
    @warranty = Warranty.find(params[:id])
  end

  def warranty_params
    params.require(:warranty).permit(:issuer, :start_date, :end_date, :bicycle_id)
  end
end
