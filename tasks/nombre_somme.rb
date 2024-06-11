#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

valeurs = Array.new(200) { rand(0..100) }

sum_even = valeurs.select { |num| num.even? }.sum

puts "La moyenne de les nombre pair est #{sum_even}"