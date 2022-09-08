class AddTimeToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :play_time,:datetime
  end
end
