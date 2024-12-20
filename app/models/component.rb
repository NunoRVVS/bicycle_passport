class Component < ApplicationRecord
  has_many :bicycle_components
  has_many :bicycles, through: :bicycle_components

  has_one_attached :photo
end
