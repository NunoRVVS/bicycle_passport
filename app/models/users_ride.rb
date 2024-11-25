class UsersRide < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  belongs_to :ride
end
