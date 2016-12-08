class AddNameToUsers < ActiveRecord::Migration[5.0]
  def self.up
  add_column :users, :merchant_name, :string
  add_column :users, :merchant_location, :string
  add_column :users, :merchant_image, :string
  end

end