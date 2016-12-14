class Transaction < ApplicationRecord
	include UniqueTokenGenerator

	belongs_to :user
	belongs_to :traveller

	before_save :ensure_reference_populated

	private

	def ensure_reference_populated
		generate_token_for :reference, token_size: 16
	end

end
