class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.integer :game_shop_id
      t.integer :game_id
      t.integer :player_id
      t.datetime :play_time
      t.integer :duration
      t.timestamps
    end
  end
end
