class CreateNewPlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :birthday
      t.integer :level
    end
   end
end
