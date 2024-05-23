#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to sweep a short staircase of beepers
class SomRobot < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def sweep
    if karel.next_to_a_beeper?
        karel.pick_beeper
    end
    unless karel.next_to_a_beeper?
        karel.put_beeper
    end
    unless karel.front_is_clear?
        karel_turn_around_left
    end
    if karel.facing_east?
        
    end
  end

  def sweep_move
    sweep
    move
  end

  def swap
    super()
    sweep_move
  end

  def turn_around_left
    turn_left
    move
    turn_left
  end
end