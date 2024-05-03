#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t10_q4_main"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")

  karel = T10Q4Robot.new(11, 2, Robota::SOUTH, 50)
  karel.put_beeper
  karel.move_8
  karel.put_beeper
  karel.put_beeper
  karel.turn_left
  karel.move_8
  karel.put_beeper
  karel.put_beeper
  karel.turn_left
  karel.move_8
  karel.put_beeper
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