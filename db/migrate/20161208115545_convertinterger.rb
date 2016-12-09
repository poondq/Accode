class Convertinterger < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :merchant_amount, :integer
  	change_column :users, :merchant_status, :boolean
  	change_column :users, :merchant_rating, :integer
  end
end

