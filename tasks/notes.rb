#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

notes = Array.new(200) { rand(20..100) }

sum = notes.sum 
average = sum.to_f / notes.size

puts "Le note moyenne est #{average.round(2)}"