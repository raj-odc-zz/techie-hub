class Comment < ApplicationRecord
  belongs_to :article
  has_many :taggings
  has_many :ratings, as: :rateable
end
