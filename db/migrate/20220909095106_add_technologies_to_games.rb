class AddTechnologiesToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games,:technologies,:string
  end
end
