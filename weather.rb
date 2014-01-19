require 'rubygems'
require 'open-uri'
require 'json'

print "Please enter an address: "
address = gets.chomp
address = address.gsub(/\s/, '+')
json_data = open("http://api.openweathermap.org/data/2.5/weather?q=#{address}&mode=json&units=imperial").read
data = JSON.parse(json_data)
puts "#{data['main']['temp']}f"