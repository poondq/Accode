class AddTotalamttotransaction < ActiveRecord::Migration[5.0]
  def change
  	  	add_column :transactions, :total4trans, :integer
  end
end
