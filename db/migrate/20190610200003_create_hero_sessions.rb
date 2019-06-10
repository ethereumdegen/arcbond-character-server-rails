class CreateHeroSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :hero_sessions do |t|
      t.integer :hero_uuid

      t.timestamps
    end
  end
end
