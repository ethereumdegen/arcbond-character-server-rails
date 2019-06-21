class CreateCustomTags < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_tags do |t|
      t.string :hero_uuid, null: false, index:true
      t.string :name, null: false
      t.string :value, null: false

      t.timestamps
    end
  end
end
