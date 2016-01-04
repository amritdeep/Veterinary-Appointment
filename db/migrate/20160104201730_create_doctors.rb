class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.date :degree_received_dt
      t.integer :year_in_practice

      t.timestamps null: false
    end
  end
end
