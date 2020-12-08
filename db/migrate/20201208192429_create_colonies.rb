class CreateColonies < ActiveRecord::Migration[6.0]
  def change
    create_table :colonies do |t|
      t.integer :planet_id
      t.integer :alien_id

      t.timestamps
    end
  end
end
