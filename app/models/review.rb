class Review < ApplicationRecord
  belongs_to :resturant
  belongs_to :user
end
