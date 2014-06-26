class AddFacilityIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :facilityId, :integer
  end
end
