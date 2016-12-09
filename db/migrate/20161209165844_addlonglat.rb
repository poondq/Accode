class Addlonglat < ActiveRecord::Migration[5.0]
  def change
  add_column :users, :long, :string
  add_column :users, :lat, :string
  end
end
