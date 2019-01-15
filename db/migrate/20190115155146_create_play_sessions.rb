class CreatePlaySessions < ActiveRecord::Migration[5.2]
  def change
    create_table :play_sessions do |t|
      t.integer :license_id
      t.datetime :play_start
      t.datetime :last_observed
      t.string :platform

      t.timestamps
    end
  end
end
