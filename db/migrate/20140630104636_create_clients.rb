class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone1
      t.string :phone2
      t.string :email_id
      t.string :address
      t.text :notes
      t.date :birthdate
      t.integer :how_met_id

      t.timestamps
    end
  end
end
