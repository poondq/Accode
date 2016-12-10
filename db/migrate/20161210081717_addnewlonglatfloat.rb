class Addnewlonglatfloat < ActiveRecord::Migration[5.0]
  def change
  	 add_column :users, :long, :float
  add_column :users, :lat, :float
  end
end
