class Image < ApplicationRecord
  belongs_to :dog, optional: true
  belongs_to :breeder, optional: true
  belongs_to :user, optional: true
end
