class BoardsController < ApplicationController
  def index
    render json: Board.all
  end

  # def show
  #   board = Board.find_or_create_by(params[:id])
  #   render json: Board.all
  # end

  def create
    board = Board.new()
    board.status = params[:status].values
    board.game_id = Game.find_or_create_by(id: params[:game_id].to_i)
    render json: board
  end

  def update
    board = Board.find(params[:id])
    board.status = params[:status].values
    render json: board
  end

  private

  def board_params
    params.require(:board).permit(:status, :game_id)
  end

end
