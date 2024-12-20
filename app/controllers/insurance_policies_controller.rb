# app/controllers/insurance_policies_controller.rb
class InsurancePoliciesController < ApplicationController
  before_action :set_insurance_policy, only: [:edit, :update, :destroy]
  before_action :set_bicycle, only: [:create, :edit, :update, :destroy]



  def index
    @bicycle = Bicycle.find(params[:bicycle_id])
    @insurance_policies = InsurancePolicy.where(bicycle_id:@bicycle.id)

  end

  def show
    @insurance_policy = InsurancePolicy.find(params[:id])
  end

  def new
    # @insurance_policy = InsurancePolicy.new
    @bicycle = Bicycle.find(params[:bicycle_id]) # Find the parent bicycle
    @insurance_policy = @bicycle.insurance_policies.build
  end

  def create
    @bicycle = Bicycle.find(params[:bicycle_id]) # Find the parent bicycle
    @insurance_policy = @bicycle.insurance_policies.build(insurance_policy_params)
    if @insurance_policy.save
      redirect_to bicycle_insurance_policies_path, notice: 'Insurance policy was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @insurance_policy = InsurancePolicy.find(params[:id])
    if @insurance_policy.update(insurance_policy_params)
      redirect_to @insurance_policy, notice: 'Insurance policy was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @insurance_policy.destroy
    # redirect_to bicycle_insurance_policies_path, notice: 'Insurance policy was successfully destroyed.'
    redirect_to request.referer || root_path
  end

  private
  def set_bicycle
    @bicycle = Bicycle.find(params[:bicycle_id])
  end

  def set_insurance_policy
    @insurance_policy = InsurancePolicy.find(params[:id])
  end

  def insurance_policy_params
    params.require(:insurance_policy).permit(:insurer, :policy_number, :description, :bicycle_id)
  end
end
