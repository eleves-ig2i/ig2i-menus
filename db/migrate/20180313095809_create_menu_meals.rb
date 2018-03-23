class CreateMenuMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_meals, id: :uuid do |t|
      t.belongs_to :meal, foreign_key: true, type: :uuid
      t.belongs_to :menu, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
