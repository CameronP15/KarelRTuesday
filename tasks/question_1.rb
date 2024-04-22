#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Question1 < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
  def line
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
  end

  def next_row
    turn_left
    move
    turn_left
  end

  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def next_row_2
    turn_right
    move
    turn_right
  end

  def reculer
    turn_left
    turn_left
    move
    turn_left
    turn_left
  end

  def put_pins
    move
    put_beeper
    move
    turn_left
    move
    put_beeper
    reculer
    reculer
    put_beeper
    turn_right
    move
    turn_right
    move
    put_beeper
    reculer
    reculer
    put_beeper
    reculer
    reculer
    put_beeper
    turn_left
    move
    turn_left
    move
    put_beeper
    reculer
    reculer
    put_beeper
    reculer
    reculer
    put_beeper
    reculer 
    reculer
    put_beeper
    turn_off
  end

  def diamond_top
    turn_left
    move
    pick_beeper
    move
    move
    pick beeper
    move
    move
    pick beeper
    turn_right
    move
    turn_right
    move
    pick_beeper
    move
    move
    pick_beeper
    turn_left
    move
    turn_left
    move
    pick_beeper
  end
end