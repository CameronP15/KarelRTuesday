#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "cameron robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()

  karel = CameronRobot.new(1, 1, Robota::EAST, 0)

  
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