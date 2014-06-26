class AddMapToTennisFacilities < ActiveRecord::Migration
  def change
    add_column :tennis_facilities, :map, :string
  end
end
