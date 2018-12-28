class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :uuid
      t.integer :status
      t.integer :in_match_server_id

      t.timestamps
    end
  end
end
