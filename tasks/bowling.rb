#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "question_1"
require_relative "../karel/robota"

def task()
  karel = Question1.new(4, 4, Robota::EAST, 25)
  karel.put_pins
end

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