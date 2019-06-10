class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.integer :quest_progress
      t.integer :hero_uuid

      t.timestamps
    end
  end
end
