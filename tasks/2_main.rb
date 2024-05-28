#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "som_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/sommative_problem")
  
  karel = SomRobot.new(10, 7, Robota::SOUTH, 0)
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.pick_beeper
  karel.turn_right
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.move
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.pick_beeper
  karel.turn_left
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.turn_left
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