class Car < ApplicationRecord
  belongs_to :user

  validates :brand, :model, :year, :price, :description, presence: true
  validates :price, numericality: { greater_than:0,  only_integer: true }

  def full_car
    "#{brand} #{model} "
  end
end
