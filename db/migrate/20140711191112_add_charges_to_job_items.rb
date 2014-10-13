class AddChargesToJobItems < ActiveRecord::Migration
  def change
  	add_column :jobs, :amount, :decimal 
  end
end
