#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to sweep a short staircase of beepers
class SomRobot < UrRobot
  include Turner
  include SensorPack
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def maze
    move
    unless front_is_clear?
        turn_left
    end
    if next_to_a_beeper?
        pick_beeper        
    end
  end


  def sweep
    while front_is_clear?
        if next_to_a_beeper?
            pick_beeper
        end
        unless next_to_a_beeper?
            put_beeper
        end
        move
    end
    unless front_is_clear?
        if facing_east?
            turn_left
            move
            turn_left
        end
        if facing_west?
            turn_right
            move
            turn_right
        end
    end
  end
end