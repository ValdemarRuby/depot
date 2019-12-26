class DropOrdersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :pay_type_id, :integer
    add_foreign_key :orders, :pay_types
  end
end
