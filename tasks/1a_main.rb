#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "som_robot"
require_relative "../karel/robota"
require_relative "../mixins/sensor_pack"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/rectangle.kwld")
  
  karel = SomRobot.new(2, 2, Robota::EAST, INFINITY)
  karel.sweep_move
  
end

if __FILE__ == $0
  if $graphical
     screen = window(20, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end