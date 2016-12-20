class Addratingtotransaction < ActiveRecord::Migration[5.0]
  def change
  add_column :transactions, :rating, :float
  end
end
