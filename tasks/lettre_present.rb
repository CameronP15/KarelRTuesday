#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

puts "entrez un mot:"
mot = gets.chomp
puts "entrez une lettre:"
lettre = gets.chomp
if mot.include?(lettre)
	puts "La lettre #{lettre} est present dans le mot #{mot}"
else
	puts "La lettre #{lettre} nest pas present dans le mot #{mot}"
end