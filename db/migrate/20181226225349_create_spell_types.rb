class CreateSpellTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_types do |t|
      t.string :name
      t.integer :cast_style
      t.string :icon
      t.integer :cooldown
      t.integer :manacost

      t.timestamps
    end
  end
end
