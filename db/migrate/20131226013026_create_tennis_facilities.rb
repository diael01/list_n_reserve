class CreateTennisFacilities < ActiveRecord::Migration
  def change
    create_table :tennis_facilities do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :city
      t.integer :courts
      t.string :lighted
      t.string :courtstypes
      t.string :manager
      t.string :phone

      t.timestamps
    end
  end
end
