#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

puts "donnez un valeur en seconds:"
seconds = gets.to_i

minutes = seconds / 60
remaining_seconds = seconds % 60

puts "#{seconds} seconds est egal a #{minutes} minute et #{remaining_seconds} seconds"