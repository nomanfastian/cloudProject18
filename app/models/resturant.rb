class Resturant < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  ratyrate_rateable "name"
  belongs_to :user
  has_many :reviews, dependent: :delete_all
  belongs_to :location
end
