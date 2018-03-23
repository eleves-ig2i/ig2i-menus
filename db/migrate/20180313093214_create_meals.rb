class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals, id: :uuid do |t|
      t.string :name
      t.text :ingredients, array: true

      t.belongs_to :student, type: :uuid

      t.timestamps
    end
  end
end
