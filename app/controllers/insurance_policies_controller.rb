# app/controllers/insurance_policies_controller.rb
class InsurancePoliciesController < ApplicationController
  before_action :set_insurance_policy, only: %i[show edit update destroy]

  def index
    @insurance_policies = InsurancePolicy.all
  end

  def show; end

  def new
    @insurance_policy = InsurancePolicy.new
  end

  def create
    @insurance_policy = InsurancePolicy.new(insurance_policy_params)
    @insurance_policy.save
      redirect_to insurance_policy(@insurance_policy), notice: 'Insurance policy was successfully created.'
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
    if @insurance_policy.update(insurance_policy_params)
      redirect_to @insurance_policy, notice: 'Insurance policy was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # @insurance_policy.destroy
    # redirect_to insurance_policies_url, notice: 'Insurance policy was successfully destroyed.'
  end

  private

  def set_insurance_policy
    @insurance_policy = InsurancePolicy.find(params[:id])
  end

  def insurance_policy_params
    params.require(:insurance_policy).permit(:insurer, :policy_number, :description, :bicycle_id)
  end
end
