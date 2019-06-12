class CreateInventorySlots < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_slots do |t|
      t.integer :slot_id, default: 0, null: false
      t.integer :item_id, default: 0, null: false
      t.string :item_name, null: false
      t.integer :item_quantity, default: 0, null: false
      t.string :hero_custom_uuid, null: false, index:true

      t.timestamps
    end
  end
end
