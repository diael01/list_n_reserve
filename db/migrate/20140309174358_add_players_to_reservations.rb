class AddPlayersToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :players, :integer
  end
end
