class Menu < ApplicationRecord
  belongs_to :student
  has_many :menu_meals
  has_many :meals, through: :menu_meals
end
