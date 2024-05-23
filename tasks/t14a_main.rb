#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t14a_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  karel = T14aRobot.new(1, 1, Robota::EAST, 5)
karel.move
  
end

if __FILE__ == $0
  if $graphical
     screen = window(11, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end