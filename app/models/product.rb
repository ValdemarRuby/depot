class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true, length: { minimum: 10 }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "URL must point to a jpg, png or gif image!"
  }

  # вывод товара, который подвергался изменениям последним.
  def self.latest
    Product.order(:updated_at).last
  end
end
