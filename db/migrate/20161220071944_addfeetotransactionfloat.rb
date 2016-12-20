class Addfeetotransactionfloat < ActiveRecord::Migration[5.0]
  def change
  	  	  	add_column :transactions, :fee, :float

  end
end
