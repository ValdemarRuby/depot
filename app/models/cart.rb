class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy   # after the destruction of the basket - destroy all positions
end
