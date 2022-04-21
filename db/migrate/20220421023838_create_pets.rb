class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.boolean :is_creature
      t.integer :user_id
      t.integer :creature_id
      t.integer :alien_id
    end
  end
end
