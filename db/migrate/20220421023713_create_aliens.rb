class CreateAliens < ActiveRecord::Migration[6.1]
  def change
    create_table :aliens do |t|
      t.string :species_name
      t.string :description
      t.integer :user_id
    end
  end
end
