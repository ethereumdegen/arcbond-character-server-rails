class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.integer :uuid, index:true
      t.integer :version_number
      t.string :name

      t.integer :faction_id
      t.integer :latest_hero_session_id

      t.timestamps
    end
  end
end
