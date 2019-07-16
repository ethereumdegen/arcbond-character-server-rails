class CreateInventorySlots < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_slots do |t|

      t.integer :slot_id, default: 0, null: false
      t.integer :item_id, default: 0, null: false
      t.string :item_name
      t.string :enchantment_name 
      t.integer :quantity, default: 0, null: false
      t.string :hero_uuid, null: false, index:true

      t.timestamps
    end
  end
end
