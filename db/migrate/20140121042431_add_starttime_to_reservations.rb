class AddStarttimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :starttime, :integer
  end
end
