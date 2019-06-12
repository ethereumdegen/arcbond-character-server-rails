class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.integer :progress
      t.string :hero_custom_uuid, index:true

      t.timestamps
    end
  end
end
