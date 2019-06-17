class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :hero_uuid, index:true
      t.integer :version_number, default: 0, null: false
      t.string :name

      t.integer :faction, default: 0, null: false



      t.datetime :last_session_start
      t.datetime :last_session_end

      t.timestamps
    end
  end
end
