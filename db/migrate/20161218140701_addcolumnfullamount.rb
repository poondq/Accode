class Addcolumnfullamount < ActiveRecord::Migration[5.0]
  def change
  	  	  	  	add_column :transactions, :fullamount, :integer
  end
end
