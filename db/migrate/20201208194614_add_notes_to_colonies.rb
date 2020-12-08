class AddNotesToColonies < ActiveRecord::Migration[6.0]
  def change
    add_column :colonies, :notes, :text
  end
end
