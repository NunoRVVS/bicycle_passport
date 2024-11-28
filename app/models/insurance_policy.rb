class InsurancePolicy < ApplicationRecord
  belongs_to :bicycle
  validates :insurer, :policy_number, presence: true
  validates :policy_number, presence: true
  validates :bicycle_id, presence: true
end
