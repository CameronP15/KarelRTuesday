#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class GrinchRobot < UrRobot
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

  def turn_around
    turn_left
    turn_left
    move
  end

  def move_3
    move
    move
    move
  end

  def move_6
    move_3
    move_3
  end

  def empty_bag
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
  end

  def empty_house
    move
    move
    turn_right
    move
    turn_left
    move
    move
    pick_beeper
    pick_beeper
    turn_right
    move
    pick_beeper
    pick_beeper
    turn_around
    turn_left
    move
    move
    turn_right
    move
    turn_left
    move
    move
  end
end