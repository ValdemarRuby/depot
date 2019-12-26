class RenameColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :pay_types, :type, :pay_name
  end
end
