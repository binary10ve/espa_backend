class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.decimal :actual_amount
      t.decimal :total_amount
      t.decimal :discount
      t.integer :created_by

      t.timestamps
    end
  end
end
