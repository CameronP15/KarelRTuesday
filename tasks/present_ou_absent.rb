#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]
nom = gets.chomp.to_s  #pour accepter l'entré, couper l'espace blanc, et puis changer à string

puts "Donne moi un nom. tapez q pour quitter"

def present
	if nom = noms
		puts "present"
	end
	if nom ≠ noms
		puts "absent"
	end
end

