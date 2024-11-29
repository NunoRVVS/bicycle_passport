class Bicycle < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :bicycle_components
  has_many :components, through: :bicycle_components
  has_many :insurance_policies
  has_many :users_rides
  has_many :maintenances
  has_many :warranties
end
