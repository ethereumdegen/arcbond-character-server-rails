class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name, null: false
      t.boolean :learned, null: false
      t.string :hero_custom_uuid, null: false, index:true


      t.timestamps
    end
  end
end
