class MenuMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :menu
end
