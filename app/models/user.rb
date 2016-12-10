class User < ApplicationRecord
	has_many :transactions
	has_many :travellers, :through => :transactions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
