require 'rubygems'
require 'open-uri'
require 'json'

print 'Enter an address, city or zipcode: '
address = gets.chomp
address = address.gsub(/\s/, '+')
json_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=false").read
data = JSON.parse(json_data)
puts "Latitude: #{data['results'][0]['geometry']['location']['lat']}"
puts "Longitude: #{data['results'][0]['geometry']['location']['lng']}"