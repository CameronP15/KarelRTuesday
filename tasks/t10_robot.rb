#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class T10Robot < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
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

  def move_9
    
end