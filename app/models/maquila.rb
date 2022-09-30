class Maquila < ApplicationRecord
  belongs_to :user
  has_many :posts, as: :posteable
end
