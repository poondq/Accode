class Addcolumntoken < ActiveRecord::Migration[5.0]
  def change
  	  	  	add_column :transactions, :token, :string
  end
end
