#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Robot2 < UrRobot
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

  def reculer
    turn_left
    turn_left
    move
    turn_left
    turn_left
  end

  def move_5
    move
    move
    move
    move
    move
  end
end