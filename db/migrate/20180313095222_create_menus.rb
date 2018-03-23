class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus, id: :uuid do |t|
      t.string :name

      t.belongs_to :student, type: :uuid

      t.datetime :date
      t.datetime :published_at
      t.datetime :ended_at
      t.timestamps
    end
  end
end
