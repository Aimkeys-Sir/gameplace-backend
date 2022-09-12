class AddCreditsToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :credits, :string
  end
end
