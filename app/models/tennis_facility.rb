class TennisFacility < ActiveRecord::Base
geocoded_by :address
after_validation :geocode, :if => :address_changed?

def self.search(search)
    if search['zipcode'].present?
      	find(:all, :conditions => ['zipcode= ?', search['zipcode']])
    elsif search['id'].present?
      	find(:all, :conditions => ['id= ?', search['id']])
    elsif search['name'].present?
      	find(:all, :conditions => ['name= ?', search['name']])
    elsif search['city'].present?
      	find(:all, :conditions => ['city= ?', search['city']])
    else
      	find(:all)
    end
 end

end
