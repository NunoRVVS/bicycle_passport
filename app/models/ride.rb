class Ride < ApplicationRecord
  belongs_to :user
  validates :start_point, :end_point, :start_date, :end_date, :distance, presence: true
end
