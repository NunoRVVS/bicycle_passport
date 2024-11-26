class Warranty < ApplicationRecord
  belongs_to :bicycle
  validates :issuer, :start_date, presence: true
end
