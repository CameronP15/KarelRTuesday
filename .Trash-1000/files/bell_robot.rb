#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
class BellRobot < UrRobot
  include Turner
# A class whose robots know how to sweep a short staircase of beepers
class Robot1 < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers, color = nil)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def move_put_beeper
    move
    put_beeper
  end

  def move_put_beeper_4
    move_put_beeper
    move_put_beeper
    move_put_beeper
    move_put_beeper
  end

  def move_put_beeper_5
    move_put_beeper_4
    move_put_beeper
  end

  def move_put_beeper_3
    move_put_beeper
    move_put_beeper
    move_put_beeper
  end
end