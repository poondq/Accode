class CreateTravellers < ActiveRecord::Migration[5.0]
  def change
    create_table :travellers do |t|
    	t.string :firstname
    	t.string :lastname
    	t.integer :creditcard
    	t.string :photo
    	t.string :email
    	t.string :number
    	t.string :traveller_id


      t.timestamps
    end
  end
end
