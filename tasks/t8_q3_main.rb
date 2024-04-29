#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robot_1"
require_relative "robot_2"
require_relative "robot_3"
require_relative "robot_4"
require_relative "robot_5"
require_relative "../karel/robota"

def task()
  
  karel = Robot1.new(1, 1, NORTH, 1)
  karel.put_beeper
  karel = Robot2.new(1, 1, NORTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot3.new(6, 1, EAST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot4.new(6, 6, SOUTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot5.new(1, 6, WEST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot1.new(1, 1, NORTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot2.new(6, 1, EAST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot3.new(6, 6, SOUTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot4.new(1, 6, WEST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot5.new(1, 1, NORTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
    karel = Robot1.new(6, 1 EAST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot2.new(6, 6, SOUTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot3.new(1, 6, WEST, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot4.new(1, 1, NORTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
  karel = Robot5.new(1, 1, NORTH, 0)
  karel.pick_beeper
  karel.move_5
  karel.put_beeper
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