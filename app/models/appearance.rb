class Appearance < ActiveRecord::Base
	validates :guest_rating, length: { in: 1..5 }

	belongs_to :guest
	belongs_to :episode
end

