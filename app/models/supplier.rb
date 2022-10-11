class Supplier < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :posts, as: :posteable
end
