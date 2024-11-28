class User < ApplicationRecord
  has_many :bicycles
  has_many :rides, dependent: :destroy
  # Adicione outras associações e validações aqui
  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
