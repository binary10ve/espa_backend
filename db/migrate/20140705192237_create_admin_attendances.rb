class CreateAdminAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :staff_id
      t.datetime :time_in
      t.datetime :time_out
      t.date :attendance_date
      t.boolean :showed_up

      t.timestamps
    end
  end
end
