class AddAmountToSession < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :amount, :integer
  end
end
