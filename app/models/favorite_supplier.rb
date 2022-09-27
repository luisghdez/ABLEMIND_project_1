class FavoriteSupplier < ApplicationRecord
  belongs_to :user
  belongs_to :supplier
end
