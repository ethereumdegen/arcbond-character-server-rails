class CreateEffectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :effect_types do |t|
      t.string :name
      t.integer :effect_base
      t.integer :art_effect
      t.integer :art_attachment_point
      t.integer :duration

      t.timestamps
    end
  end
end
