class Venue < ActiveRecord::Base

	geocoded_by :address

	after_validation :geocode

	validates :address, presence: true, uniqueness: true

	validates :title, presence: true, uniqueness: true

end
