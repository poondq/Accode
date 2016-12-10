class AddForeignKeysToTransactions < ActiveRecord::Migration[5.0]
  def change
  	add_column :transactions, :traveller_id, :integer, null: false
  	add_column :transactions, :user_id, :integer, null: false
  end
end
