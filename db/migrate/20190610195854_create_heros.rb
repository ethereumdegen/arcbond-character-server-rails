class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :custom_uuid, index:true
      t.integer :version_number
      t.string :name

      t.integer :faction 
      t.integer :latest_hero_session_id

      t.datetime :last_session_start
      t.datetime :last_session_end

      t.timestamps
    end
  end
end
