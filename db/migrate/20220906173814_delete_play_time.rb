class DeletePlayTime < ActiveRecord::Migration[7.0]
  def change
    remove_column :sessions,:play_time
  end
end
