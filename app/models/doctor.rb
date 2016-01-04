class Doctor < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 32 }
	validates :zip, length: { is: 5 }
	validates :year_in_practice, length: { in: 1..100 }
end
