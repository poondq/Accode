class Changestringtofloat < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :long
	remove_column :users, :lat

  end
end
