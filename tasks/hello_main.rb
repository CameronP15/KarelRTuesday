#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "h_robot"
require_relative "e_robot"
require_relative "l_robot"
require_relative "o_robot"
require_relative "../karel/robota"

def task()
  
  karel = HRobot.new(2, 7, Robota::SOUTH, 50)
  karel.h
  karel = ERobot.new(9, 7, Robota::WEST, 50)
  karel.e
  karel = LRobot.new(11, 7, Robota::SOUTH, 50)
  karel.l
  karel = LRobot.new(15, 7, Robota::SOUTH, 50)
  karel.l
  karel = ORobot.new(19, 7, Robota::SOUTH, 50)
  karel.o
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