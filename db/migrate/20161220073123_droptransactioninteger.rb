class Droptransactioninteger < ActiveRecord::Migration[5.0]
  def change
  	  	remove_column :transactions, :total4trans
  	  	remove_column :transactions, :fullamount

  	  	remove_column :users, :merchant_rating
  end
end
