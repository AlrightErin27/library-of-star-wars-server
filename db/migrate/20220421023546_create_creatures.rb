class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :species_name
      t.string :description
      t.string :img_url
    end
  end
end
