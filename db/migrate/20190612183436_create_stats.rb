class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :name
      t.integer :amount
      t.string :hero_custom_uuid, index:true 

      t.timestamps
    end
  end
end
