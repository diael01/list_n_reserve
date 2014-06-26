class RenameManagerColumnToComments < ActiveRecord::Migration
  def change
  	#def self.up
    rename_column :tennis_facilities, :manager, :comments
  #end
  end
end
