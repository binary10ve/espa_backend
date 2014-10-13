class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.text :description
      t.string :inventory_type
      t.decimal :cost
      t.integer :quantity
      t.datetime :purchased_on

      t.timestamps
    end
  end
end
