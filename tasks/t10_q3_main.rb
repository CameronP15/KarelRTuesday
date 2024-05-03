#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t10_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")
  
  karel = T10Robot.new(11, 2, Robota::EAST, 0)
  karel.move_8
  karel.next_row_r
  karel.move_8
  karel.next_row_l
  karel.move_8
  karel.next_row_r
  karel.move_8
  karel.next_row_l
  karel.move_8
  karel.next_row_r
  karel.move_8
  karel.next_row_l
  karel.move_8
  karel.next_row_r
  karel.move_8
  karel.next_row_l
  end
end

  if karel.next_to_a_beeper?
    karel.pick_beeper
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