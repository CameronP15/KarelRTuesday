#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

valeurs = array = (1..100).to_a

valeurs.delete(rand(0..99))

somme_complete = 100 * 101 / 2

somme_actuelle = valeurs.sum

entier_manquant = somme_complete - somme_actuelle

puts "Lentier manquant est #{entier_manquant}"