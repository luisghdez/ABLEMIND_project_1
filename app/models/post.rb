class Post < ApplicationRecord
  belongs_to :posteable, polymorphic: true
  has_many :likes
end
