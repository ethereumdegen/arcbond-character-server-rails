class CreateItemTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_types do |t|
      t.string :name
      t.string :icon
      t.string :art

      t.timestamps
    end
  end
end
