class CreateMatchServers < ActiveRecord::Migration[5.2]
  def change
    create_table :match_servers do |t|
      t.string :ip_address
      t.integer :port
      t.string :name
      t.integer :mode
      t.integer :active_players
      t.integer :max_players

      t.timestamps
    end
  end
end
