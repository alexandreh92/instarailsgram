class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, length: { minimum: 3, maximum: 50 }
  validates :username, length: { minimum: 3, maximum: 15 }
  validates :description, length: { maximum: 150 }
  has_many :posts
  has_many :comments
  has_one_attached :avatar
end
