class Update2 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :merchant_transactionref
  	remove_column :travellers, :traveller_transactionref
  end
end
