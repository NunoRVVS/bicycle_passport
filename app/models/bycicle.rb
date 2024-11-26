class Bycicle < ApplicationRecord
  belongs_to :user
  has_many :bicycle_components
  has_many :components, through: :bicycle_components
end
