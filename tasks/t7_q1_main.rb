#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "construction_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  karel = ConstructionRobot.new(2, 11, Robota::SOUTH, 5)
  karel.move_10

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