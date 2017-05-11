class BoardsController < ApplicationController
  def index
    render json: Board.all
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end
  def create
    board = Board.new()
    board.status = params[:status].values
    board.user_id = params[:user_id]
    board.game_result = params[:game_result]
    board.ammo = params[:ammo]
    board.save
    render json: board
  end

  def update
    board = Board.find(params[:id])
    board.status = params[:status].values
    board.ammo = params[:ammo]
    board.game_result = params[:game_result]
    board.save
    render json: board
  end

  private

  def board_params
    params.require(:board).permit(:status, :user_id, :game_result, :ammo)
  end

end
