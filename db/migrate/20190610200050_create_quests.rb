class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name, null: false
      t.integer :progress, default: 0, null: false
      t.string :hero_uuid, null: false, index:true

      t.timestamps
    end
  end
end
