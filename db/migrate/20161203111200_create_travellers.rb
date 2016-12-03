class CreateTravellers < ActiveRecord::Migration[5.0]
  def change
    create_table :travellers do |t|

    	t.string :traveller_name
    t.string   :traveller_id
     t.string   :traveller_avatar
     t.string   :traveller_name
     t.string   :traveller_number
     t.string   :traveller_transactionref
      t.timestamps
    end
  end
end
