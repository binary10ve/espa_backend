class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :pan_no
      t.text :permanent_address
      t.text :temporary_address
      t.string :phone1
      t.string :phone2
      t.string :emergency_contact_no

      t.timestamps
    end
  end
end
