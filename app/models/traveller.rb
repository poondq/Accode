class Traveller < ApplicationRecord
	validates_presence_of :firstname, :lastname, :email

	validate :valid_handphone_number

	has_many :transactions
	has_many :users, through: :transactions

	private

	def valid_handphone_number
		if false
			errors.add :number, " has invalid format"
		end
	end
end
