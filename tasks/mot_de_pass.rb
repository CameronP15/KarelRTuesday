#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

utilisateurs = {
  "user1" => "password1",
  "user2" => "password2",
  "user3" => "password3",
  "user4" => "password4",
  "user5" => "password5",
  "user6" => "password6",
  "user7" => "password7",
  "user8" => "password8",
  "user9" => "password9",
  "user10" => "password10",
  "user11" => "password11",
  "user12" => "password12",
  "user13" => "password13",
  "user14" => "password14",
  "user15" => "password15",
  "user16" => "password16",
  "user17" => "password17",
  "user18" => "password18",
  "user19" => "password19",
  "user20" => "password20"
}

puts "nom dutilisateur:"
username = gets.chomp

puts "mot de pass:"
password = gets.chomp

if utilisateurs.key?(username) && utilisateurs[username] == password
	puts "ACESS GRANTED"
else
	puts "INVALID USERNAME OR PASSWORD"
end