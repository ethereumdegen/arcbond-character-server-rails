class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :name, null: false
      t.integer :amount, default: 0, null: false
      t.string :hero_custom_uuid, null: false, index:true

      t.timestamps
    end
  end
end
