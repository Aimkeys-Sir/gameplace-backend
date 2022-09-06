class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :min_age
      t.integer :min_level
      t.integer :min_health
      t.integer :price
    end
  end
end
