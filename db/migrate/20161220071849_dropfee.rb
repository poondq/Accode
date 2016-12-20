class Dropfee < ActiveRecord::Migration[5.0]
  def change
  	  	remove_column :transactions, :fee
  end
end
