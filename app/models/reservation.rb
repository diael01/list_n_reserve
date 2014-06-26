class Reservation < ActiveRecord::Base

def self.search(search)
    if search['itemId'].present? && 
    	search['starttime'].present? &&
    	search['endtime'].present? &&
      search['facilityId'].present?
    	res = nil
    	#if(Person.exists?(['name LIKE ?', "%#{query}%"]))
    	if(Reservation.exists?(['itemId=? AND starttime=? 
      											AND endtime=? AND facilityId=?', 
      						search['itemId'],
      						search['starttime'],
      						search['endtime'],
                  search['facilityId']])) then
      		res = Reservation.find(:all,:conditions => ['itemId=? AND starttime=? 
      											AND endtime=? AND facilityId=?', 
      						search['itemId'],
      						search['starttime'],
      						search['endtime'],
                  search['facilityId']])
      	end
		
	end
end
end
