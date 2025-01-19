class GameController < ApplicationController
  def index
  end

  def tic_tac_toe
    render layout: "game"
  end

  
  def checkers
    render layout: "game"
  end
end
