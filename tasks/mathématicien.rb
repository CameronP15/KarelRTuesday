#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

def est_premier(n)
  return false if n <= 1

  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end

  true
end

def liste_nombres_premiers(jusque)
  primes = []
  (2..jusque).each do |num|
    primes << num if est_premier(num)
  end
  primes
end

puts "Entrez un nombre :"
nombre = gets.chomp.to_i

puts "Nombres premiers jusqu'à #{nombre} :"
puts liste_nombres_premiers(nombre).join(', ')