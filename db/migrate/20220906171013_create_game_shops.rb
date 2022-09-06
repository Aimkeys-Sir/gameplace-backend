class CreateGameShops < ActiveRecord::Migration[7.0]
  def change
    create_table :gameshops do |t|
      t.string :name
      t.string :location
    end
  end
end
