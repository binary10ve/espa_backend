class InventoriesTableChanges < ActiveRecord::Migration
  def change
	add_column :inventories, :price, :decimal
	add_column :inventories, :code, :string
	add_column :inventories, :unit, :integer
	add_column :inventories, :distributor_name, :string
	add_column :inventories, :distributor_phone_no, :string
	add_column :inventories, :unit_Price, :decimal
	add_column :inventories, :total_price, :decimal
	add_column :inventories, :total_paid, :decimal
	add_column :inventories, :discount, :decimal
	add_column :inventories, :payment_type, :string
	add_column :inventories, :cash, :decimal
	add_column :inventories, :check, :decimal
	add_column :inventories, :card, :decimal
	add_column :inventories, :due, :decimal
  end
end
