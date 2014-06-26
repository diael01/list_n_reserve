class AddEndtimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :endtime, :integer
  end
end
