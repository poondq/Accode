class Update < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :merchant_transactionref, :string
  	add_column :travellers, :traveller_transactionref, :string
  end
end
