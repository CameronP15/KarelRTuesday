#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

notes = Array.new(200) { rand(1..100) }

puts "Entrez une valeur entre 1 et 100 :"
valeur = gets.chomp.to_i

superieures = 0
inferieures = 0
meme_valeur = 0

notes.each do |note|
  if note > valeur
    superieures += 1
  elsif note < valeur
    inferieures += 1
  else
    meme_valeur += 1
  end
end

puts "Nombre de valeurs supérieures à #{valeur}: #{superieures}"
puts "Nombre de valeurs inférieures à #{valeur}: #{inferieures}"
puts "Nombre de valeurs égales à #{valeur}: #{meme_valeur}"