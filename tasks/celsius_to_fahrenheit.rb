#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

puts "Entrez une température en Celsius :"
temp = gets.chomp.to_f
fahrenheit = (temp * 9/5) + 32
puts "La température en Fahrenheit est : #{fahrenheit}°F"