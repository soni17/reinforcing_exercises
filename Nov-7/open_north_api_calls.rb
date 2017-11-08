require 'httparty'
require 'pp'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

puts "Wards in Toronto:"
puts "--------------------------------"
toronto_wards_json["objects"].each do |ward|
  puts ward["name"]
end


house_of_commons_reps = HTTParty.get('https://represent.opennorth.ca/representatives/house-of-commons/?limit=50')
reps_json = JSON.parse(house_of_commons_reps.body)

puts "Some MPs from House of Commons. Page contains 50 MPs"
reps_json['objects'].each do |mp|
  puts mp["name"]
end
