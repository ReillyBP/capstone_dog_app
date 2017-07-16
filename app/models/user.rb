class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dogs_users
  has_many :dogs, through: :dogs_users
  has_many :reviews
  has_many :images
  has_many :videos
end
