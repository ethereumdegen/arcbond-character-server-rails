class CreateAbilityBarConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :ability_bar_configs do |t|
      t.string :hero_uuid, null: false, index:true
      t.integer :slot_id, null: false
      t.string :ability_name

      t.timestamps
    end
  end
end
