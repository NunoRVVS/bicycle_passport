class Bicycle < ApplicationRecord
  has_many :insurance_policies, dependent: :destroy
  has_many :bicycle_components
  has_many :components, through: :bicycle_components
  belongs_to :user
end
