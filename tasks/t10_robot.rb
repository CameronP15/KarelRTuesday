#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "t14a_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class T14aRobot < UrRobot
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

  def move_4
    move
    move
    move
    move
  end

  def move_8
    move_4
    move_4
  end

  def next_row_r
    turn_right
    move
    turn_right
  end

  def next_row_l
    turn_left
    move
    turn_left
  end
end