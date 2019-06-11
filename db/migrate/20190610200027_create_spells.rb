class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :hero_custom_uuid, index:true 

      t.timestamps
    end
  end
end
