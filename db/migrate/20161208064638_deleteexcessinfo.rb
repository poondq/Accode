class Deleteexcessinfo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :traveller_id
  	remove_column :users,	:traveller_avatar
    remove_column :users,	:traveller_name
    remove_column :users,	:traveller_number
    remove_column :users, :traveller_transactionref
	
	end

end
