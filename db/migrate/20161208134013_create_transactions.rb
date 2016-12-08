class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
	t.string :transaction_id
    t.string   :reference
     t.float   :amount
     t.string  :time
     t.string  :date
      t.timestamps
    end
  end
end
