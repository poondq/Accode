 class User < ApplicationRecord
 	# has_many :transaction
 	has_many :traveller, :through => :transaction
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
