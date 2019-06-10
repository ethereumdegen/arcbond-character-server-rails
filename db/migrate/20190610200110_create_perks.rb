class CreatePerks < ActiveRecord::Migration[5.2]
  def change
    create_table :perks do |t|
      t.string :name
      t.integer :level
      t.integer :hero_uuid

      t.timestamps
    end
  end
end
