#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

puts "Entrez 5 valeurs numériques :"
values = []
5.times do |i|
  print "Valeur #{i + 1}: "
  values << gets.chomp.to_i
end

sorted_values = values.sort.reverse

puts "Les valeurs triées de haut en bas sont :"
sorted_values.each do |value|
  puts value
end