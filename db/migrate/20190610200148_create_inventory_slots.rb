class CreateInventorySlots < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_slots do |t|
      t.integer :slot_id
      t.integer :item_id
      t.string :item_name
      t.integer :item_quantity
      t.string :hero_custom_uuid, index:true 

      t.timestamps
    end
  end
end
