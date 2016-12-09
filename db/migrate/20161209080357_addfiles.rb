class Addfiles < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :merchant_amount, :integer
  	add_column :users, :merchant_status, :boolean
  	add_column :users, :merchant_rating, :integer
  end
end
