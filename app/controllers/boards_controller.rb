class BoardsController < ApplicationController

  def create
    board = Board.new()
    board.status = params[:status].values
    board.game_id = Game.find_or_create_by(id: params[:game_id].to_i)
    render json: board
  end

  def update
    board = Board.find()

  end

  private

  def board_params
    params.require(:board).permit(:status, :game_id)
  end

end
