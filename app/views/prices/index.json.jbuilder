json.array!(@prices) do |price|
  json.extract! price, :reservationType, :reservationPrice, :pricingDescription, :facilityId, :players
  json.url price_url(price, format: :json)
end
