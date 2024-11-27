class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :edit, :update, :destroy]
  before_action :set_bicycle, only: [:create, :edit, :update, :destroy, :new]

  def index
    @bicycle = Bicycle.find(params[:bicycle_id])
    @maintenances = Maintenance.where(bicycle_id: @bicycle.id)
  end

  def show
  end

  def new
    @bicycle = Bicycle.find(params[:bicycle_id])
    @maintenance = Maintenance.new

  end

  def create
   @maintenance = @bicycle.maintenances.build(maintenance_params)
    # @maintenance.bicycle_id = @bicycle.id
      if @maintenance.save
        redirect_to  bicycle_maintenances_path, notice: 'Maintenance record was successfully created.'
      else
        render :new, notice: "You are a loser!!"
      end
    end

  def edit
    # @bicycle = Maintenence.find(params[:bicycle_id])
  end

  def update
    @maintenance.update(maintenance_params)
    # @bicycle = Maintenence.find(params[:bicycle_id])
    redirect_to bicycles_path(@bicycle)
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
    params.require(:maintenance).permit(:date, :shop, :description)
  end



end
