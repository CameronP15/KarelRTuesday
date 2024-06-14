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

  def next_table
      
  end

  def turn_right
      turn_left
      turn_left
      turn_left
  end
  
  def switch
    while true
    if next_to_a_beeper?
        pick_beeper
    else
        put_beeper
    end
    if front_is_clear?
        move
    else
        if facing_east?
            turn_left
            move
            turn_left
        else
            turn_right
            move
            turn_right
        end
        
    end
    end

  end
end