class CreatePatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :patterns do |t|
      t.string :name, null: false
      t.boolean :learned, null: false
      t.string :hero_uuid, null: false, index:true
      t.integer :slot_id, null: false
      
      t.timestamps
    end
  end
end
