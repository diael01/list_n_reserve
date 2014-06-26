class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :itemId
      t.integer :priceId
      t.integer :userId
      t.integer :statusId
      t.string :status
      t.string :user
      t.string :comments

      t.timestamps
    end
  end
end
