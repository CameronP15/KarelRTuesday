#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

valeurs = Array.new(200) { rand(0..100) }

frequency =
valeur.each_with_object(hash.new(0)) 
{ |num, hash| hash[num] += 1 }
most_frequent_element = frequency.max_by { |_, count| count }[0]

puts "Le nombre le plus frequent est #{most_frequent_element}"