#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/grinch.kwld")
  
  karel = GrinchRobot.new(12, 4, Robota::SOUTH, 0)
  karel.empty_house
  karel.turn_right
  karel.move_3
  karel.turn_right
  karel.empty_house
  karel.turn_right
  karel.move_3
  karel.turn_right
  karel.empty_house
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move_6
  karel.turn_right
  karel.move
  karel.turn_left
  karel.empty_house
  karel.turn_left
  karel.move_3
  karel.turn_left
  karel.empty_house
  karel.turn_left
  karel.move_3
  karel.turn_left
  karel.empty_house
  karel.turn_right
  karel.move_6
  karel.move
  karel.turn_right
  karel.move_3
  karel.turn_left
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.empty_bag
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