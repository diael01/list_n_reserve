json.array!(@reservations) do |reservation|
  json.extract! reservation, :itemId, :players, :user, :comments, :starttime, :endtime, :facilityId, :status
  json.url reservation_url(reservation, format: :json)
end
