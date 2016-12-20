class Addfloattodb < ActiveRecord::Migration[5.0]
  def change
  	add_column :transactions, :total4trans, :float
  	  	add_column :transactions, :fullamount, :float

  	  	add_column :users, :merchant_rating, :float
  end
end
