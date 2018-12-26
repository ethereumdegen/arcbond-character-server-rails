class CreateUnitStats < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_stats do |t|
      t.integer :life
      t.integer :mana
      t.float :x
      t.float :y
      t.float :z
      t.float :r

      t.timestamps
    end
  end
end
