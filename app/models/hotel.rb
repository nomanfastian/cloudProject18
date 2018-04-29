class Hotel < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", large: "200x200" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  belongs_to :user
   ratyrate_rateable "name"
end
