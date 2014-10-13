class CreateHowMets < ActiveRecord::Migration
  def change
    create_table :how_mets do |t|
      t.string :name

      t.timestamps
    end
  end
end
