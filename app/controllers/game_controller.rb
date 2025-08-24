class GameController < ApplicationController
  def index
  end

  def tic_tac_toe
    render layout: "game"
  end

  
  def checkers
    render layout: "game"
  end

  def chess
    render layout: "game"
  end

  def memory_game
    render layout: "game"
  end
  
end
