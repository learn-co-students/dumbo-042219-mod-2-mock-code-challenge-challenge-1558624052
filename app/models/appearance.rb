class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, length: { in: 1..5 }
end
