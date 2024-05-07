#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

num1 = rand(0.. 20)
valeur #{num1}
if valeur #{num1} < 10
  La valeur est plus petit que 10
if valeur #{num1} = 10
  La valeur est egal a 10
if valeur #{num1} > 10
  La valeur est plus gros que 10
if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end