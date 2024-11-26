class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :edit, :update, :destroy]
  before_action :set_bicycle, only: [:create, :edit, :update, :destroy]

  def index
    @maintenances = Maintenance.all
  end

  def show
  end

  def new
    @maintenance = Maintenance.new
  end

  def create
    @maintenance = Maintenence.new(maintenance_params)
    @maintenance.save
    # @bicycle = Maintenence.find(params[:bicycle_id])
    redirect_to bicycle_path(@bicycle)
  end

  def edit
    # @bicycle = Maintenence.find(params[:bicycle_id])
  end

  def update
    @maintenance.update(maintenance_params)
    # @bicycle = Maintenence.find(params[:bicycle_id])
    redirect_to bicycle_path(@bicycle)
  end

  def destroy
    @maintenance.destroy
    # @bicycle = Maintenence.find(params[:bicycle_id])
    redirect_to bicycle_path(@bicycle)
  end

  private

  def set_bicycle
    @bicycle = Bicycle.find(params[:bicycle_id])
  end

  def set_maintenance
    @maintenance = Maintenance.find(params[:id])
  end

  def maintenance_params
    params.require(:maintenance).permit(:date, :shop, :description, :bicycle_id, :user_id)
  end



end
