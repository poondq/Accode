class AddMerchantZone < ActiveRecord::Migration[5.0]
  def change
  	add_column :users , :merchant_zone, :string
  end
end
