#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Robot2 < UrRobot
  include Turner
  def initialize(1, 1, NORD, 0, couleur bleu)
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
end