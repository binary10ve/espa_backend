class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :client_id
      t.integer :service_id
      t.text :notes

      t.timestamps
    end
  end
end
