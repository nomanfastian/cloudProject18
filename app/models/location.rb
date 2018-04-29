class Location < ApplicationRecord
	has_many :hotels
	has_many :resturants
	has_many :attractions
end
