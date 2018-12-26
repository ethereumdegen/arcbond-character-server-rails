class CreateAppliedEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :applied_effects do |t|
      t.integer :applied_id
      t.string :applied_type
      t.integer :effect_type_id

      t.timestamps
    end
  end
end
