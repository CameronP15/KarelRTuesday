#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

num1 = rand(0.. 20)
num2 = rand(0.. 20)
if valeur #{num1} < #{num2}
  #{num2} est plus gros que #{num1}
if valeur #{num1} = #{num2}
  Les valeur sont egal
if valeur #{num1} > #{num2}
  #{num1} est plus gros que #{num2}


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