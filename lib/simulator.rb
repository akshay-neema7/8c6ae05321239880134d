
require_relative 'board'
require_relative 'toy'

class Simulator

  def initialize
    @board = Board.new 5, 5
    @robot = Toy.new @board
  end

  def execute(command)
    begin
      puts @robot.eval(command)
    rescue Exception => e
      puts e.message
    end
  end

end
