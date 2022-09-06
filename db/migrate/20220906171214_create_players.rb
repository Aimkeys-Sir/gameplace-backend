class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.integer :level
      t.integer :age
      t.integer :health_score
    end
  end
end
