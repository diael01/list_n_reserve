class Price < ActiveRecord::Base

# def self.search(search)
#     if search['facilityId'].present? 
#     	res = nil
#     	if(Price.exists?(['facilityId=?',
#                   search['facilityId']])) then
#       		res = Price.find(:all,:conditions => ['facilityId=?', 
#                   search['facilityId']])
#       	end
		
# 	end
# end

def self.search(facilityId)
    if facilityId.present?
    	res = nil
    	if(Price.exists?(['facilityId=?',
                facilityId])) then
      		res = Price.find(:all,:conditions => ['facilityId=?', 
                  facilityId])
      	end
		
	end
end

def self.search1(reservationType)
    if reservationType.present?
    	res = nil
    	if(Price.exists?(['reservationType=?',
                reservationType])) then
      		res = Price.find(:all,:conditions => ['reservationType=?', 
                  reservationType])
      	end
		
	end
end
end
