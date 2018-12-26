class CreateActivePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :active_players do |t|
      t.integer :player_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
