class CreateRateCards < ActiveRecord::Migration
  def change
    create_table :rate_cards do |t|
      t.integer :job_id
      t.decimal :service_charge

      t.timestamps
    end
  end
end
