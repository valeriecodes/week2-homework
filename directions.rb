require 'rubygems'
require 'open-uri'
require 'json'

print 'Enter an orgin address: '
origin = gets.chomp
print 'Enter a destination address: '
destination = gets.chomp
origin = origin.gsub(/\s/, '+')
destination = destination.gsub(/\s/, '+')
json_data = open("http://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}&sensor=false").read
data = JSON.parse(json_data)
puts "Total travel time driving: #{data['routes'][0]['legs'][0]['duration']['text']}"
puts "Total distance traveled: #{data['routes'][0]['legs'][0]['distance']['text']}"