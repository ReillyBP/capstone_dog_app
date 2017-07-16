class Dog < ApplicationRecord
  has_many :dogs_users
  has_many :users, through: :dogs_users
  has_many :images
  has_many :videos

  has_attached_file :image
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
