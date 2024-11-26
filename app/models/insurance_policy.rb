class InsurancePolicy < ApplicationRecord
  belongs_to :bicycle
  validates :insurer, :policy_number, presence: true
end
