class AddBlobToHero < ActiveRecord::Migration[5.2]
  def change

    add_column :heros, :jsonblob, :jsonb


  end
end
