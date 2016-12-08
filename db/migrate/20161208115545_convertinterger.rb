class Convertinterger < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :merchant_amount, 'integer USING CAST(merchant_amount AS integer)'
  	change_column :users, :merchant_status, 'boolean USING CAST(merchant_status AS boolean)'
  	change_column :users, :merchant_rating, 'integer USING CAST(merchant_rating AS integer)'
  	remove_column :users, :merchant_transactionref
  	remove_column :travellers, :traveller_transactionref
  end
end
