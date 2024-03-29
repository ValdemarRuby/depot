class Order < ApplicationRecord
  belongs_to :pay_type
  has_many :line_items, dependent: :destroy
  validates :name, :address, :email, :pay_type_id, presence: true

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
