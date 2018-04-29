class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :hotels, dependent: :delete_all
  has_many :attractions, dependent: :delete_all
  has_many :resturants, dependent: :delete_all
  has_many :reviews, dependent: :delete_all
  ratyrate_rater
end
