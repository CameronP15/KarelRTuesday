#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "som_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/restaurant")
  
  karel = SomRobot.new(10, 4, Robota::SOUTH, 0)

end

if __FILE__ == $0
  if $graphical
     screen = window(12, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end