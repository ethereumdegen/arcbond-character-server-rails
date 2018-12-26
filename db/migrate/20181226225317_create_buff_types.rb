class CreateBuffTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :buff_types do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
