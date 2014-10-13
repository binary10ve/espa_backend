class MergeUsersToStaff < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users,:last_name, :string
  	add_column :users,:date_of_birth, :date
  	add_column :users,:pan_no, :string
  	add_column :users,:permanent_address, :text
  	add_column :users,:temporary_address, :text
  	add_column :users,:phone1, :string
  	add_column :users,:phone2, :string
  	add_column :users,:emergency_contact_no, :string
    add_column :users,:blood_group, :string
    add_column :users,:middle_name, :string
  end
end
