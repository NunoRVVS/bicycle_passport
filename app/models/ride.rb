class Ride < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :users, through: :users_ride
end
