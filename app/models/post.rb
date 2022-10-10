class Post < ApplicationRecord
  belongs_to :posteable, polymorphic: true
  has_many :likes
  has_many_attached :photos
end
