class RenameLightedColumnToLights < ActiveRecord::Migration
  def change
  	rename_column :tennis_facilities, :lighted, :lights
  end
end
