class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def up
  # replacing several records for the same product in the basket with one record
    Cart.all.each do |cart|
    #  counting the amount of each item in the basket
      sums = cart.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
        #  delete individual entries
          cart.line_items.where(product_id: product_id).delete_all

        #  replacing a single entry
          item = cart.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
  #  plitting records with quantity>1 into several records.
    LineItem.where("quantity>1").each do |line_item|
    #  add individual item
      line_item.quantity.times do
        LineItem.create cart_id: line_item.cart_id,
          product_id: line_item.product_id, quantity: 1
      end

    #  destroy current record
      line_item.destroy
    end
  end
end
