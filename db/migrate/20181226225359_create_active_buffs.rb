class CreateActiveBuffs < ActiveRecord::Migration[5.2]
  def change
    create_table :active_buffs do |t|
      t.integer :unit_id
      t.integer :buff_id
      t.integer :buff_started_at #game ticks 

      t.timestamps
    end
  end
end
