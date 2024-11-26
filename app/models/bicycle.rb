class Bicycle < ApplicationRecord
  belongs_to :user
  has_many :warranties, :insurance_policies, :users_rides, :maintenances, :bicycle_components

end
