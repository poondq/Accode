class Deletefiles < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :merchant_amount
  	remove_column :users, :merchant_status
  	remove_column :users, :merchant_rating
  end
end
