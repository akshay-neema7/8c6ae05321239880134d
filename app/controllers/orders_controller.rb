
require_relative '../..//lib/simulator'

class OrdersController < ApplicationController

  def create
    simulator = Simulator.new
    command = params[:commands]
    output = simulator.execute(command)
    puts output if output
  end
end
