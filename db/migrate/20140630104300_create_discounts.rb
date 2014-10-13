class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.decimal :percent_off
      t.decimal :flat_amount

      t.timestamps
    end
  end
end
