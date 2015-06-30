json.array! @restaurants.each do |restaurant|
  json.id restaurant.id
  json.name restaurant.name
  json.address restaurant.address
  json.website restaurant.website
  json.rating restaurant.rating
  json.description restaurant.description
end