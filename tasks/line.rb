#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class question1 < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # climb one stair
  def line
    move
    place_beeper
    move
    place_beeper
    move
    place_beeper
    move
    place_beeper
    move
    place_beeper
  end
  
  # The standard task for this class of robots
 def run_task
    line
  end

end