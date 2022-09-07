class RenameGameShopTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :gameshops,:game_shops
  end
end
