class RemoveDurationFromSessions < ActiveRecord::Migration[7.0]
  def change
    remove_column :sessions, :duration
  end
end
