class Appearance < ActiveRecord::Base
	validates :guest_rating, length: { in: 1..5 }

	belongs_to :guests
	belongs_to :episodes
end

