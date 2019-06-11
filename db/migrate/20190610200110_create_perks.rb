class CreatePerks < ActiveRecord::Migration[5.2]
  def change
    create_table :perks do |t|
      t.string :name
      t.integer :level
      t.string :hero_custom_uuid, index:true 

      t.timestamps
    end
  end
end
