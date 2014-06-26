class AddLatitudeToTennisfacility < ActiveRecord::Migration
  def change
    add_column :tennis_facilities, :latitude, :float
  end
end
