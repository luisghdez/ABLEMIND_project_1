class Post < ApplicationRecord
  belongs_to :posteable, polymorphic: true
  has_many :likes
  has_many :photos
  accepts_nested_attributes_for :photos
end
