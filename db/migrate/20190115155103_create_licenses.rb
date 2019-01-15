class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :key
      t.boolean :distributed
      t.boolean :activated
      t.string :platform

      t.timestamps
    end
  end
end
