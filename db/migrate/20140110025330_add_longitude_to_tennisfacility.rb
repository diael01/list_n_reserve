class AddLongitudeToTennisfacility < ActiveRecord::Migration
  def change
    add_column :tennis_facilities, :longitude, :float
  end
end
