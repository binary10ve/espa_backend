class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :job_id
      t.integer :order_id
      t.decimal :amount
      t.integer :quantity

      t.timestamps
    end
  end
end
