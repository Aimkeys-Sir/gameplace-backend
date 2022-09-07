class AddPlayTimeToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :play_time, :integer
  end
end
