class Microposr < ApplicationRecord
	belongs_to :user
	validates :concent, length: { maximum: 140 },
		presense: true
end
