class Stateb < ActiveRecord::Migration[5.0]
  def change
  	add_column :transactions, :selectedmerchant, :string
  	add_column :transactions, :reference, :string
  end
end
