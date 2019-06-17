class CreatePerks < ActiveRecord::Migration[5.2]
  def change
    create_table :perks do |t|
      t.string :name, null: false
      t.integer :level, default: 0, null: false
      t.string :hero_uuid, null: false, index:true
      t.integer :slot_id, null: false 

      t.timestamps
    end
  end
end
