class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
    	t.string :transaction_id
    	t.integer :amount
    	t.string :time
    	t.string :date
    	t.integer :fee
    	t.string :address
    	t.string :status
      t.timestamps
    end
  end
end
