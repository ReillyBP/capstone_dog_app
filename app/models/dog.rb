class Dog < ApplicationRecord
  has_many :dogs_users
  has_many :users, through: :dogs_users
end
