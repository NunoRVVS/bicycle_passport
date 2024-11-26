class BicycleComponentsController < ApplicationController
  def index
    @bicycle_components = BicycleComponent.all
  end

  def show
    @bicycle_component = BicycleComponent.find(params[:id])
  end

  def new
    @bicycle_component = BicycleComponent.new
  end

  def create
    @bicycle_component = BicycleComponent.new(bicycle_component_params)
    if @bicycle_component.save
      redirect_to @bicycle_component
    else
      render :new
    end
  end

  def edit
    @bicycle_component = BicycleComponent.find(params[:id])
  end

  def update
    @bicycle_component = BicycleComponent.find(params[:id])
    if @bicycle_component.update(bicycle_component_params)
      redirect_to @bicycle_component
    else
      render :edit
    end
  end

  def destroy
    @bicycle_component = BicycleComponent.find(params[:id])
    @bicycle_component.destroy
    redirect_to bicycle_components_path
  end

  private

  def bicycle_component_params
    params.require(:bicycle_component).permit(:bicycle_id, :component_id)
  end
end
