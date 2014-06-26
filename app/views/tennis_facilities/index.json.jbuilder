json.array!(@tennis_facilities) do |tennis_facility|
  json.extract! tennis_facility, :name, :address, :zipcode, :city, :courts, :lights, :courtstypes, :comments, :phone
  json.url tennis_facility_url(tennis_facility, format: :json)
end
