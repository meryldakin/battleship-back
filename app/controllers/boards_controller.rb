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
    board.game_result = params[:gameResult]
    board.ammo = params[:ammo]
    board.ship = params[:ship]
    board.hits = params[:hits]
    board.save
    render json: board
  end

  def update
    board = Board.find(params[:id])
    board.status = params[:status].values
    board.ammo = params[:ammo]
    board.game_result = params[:gameResult]
    board.ship = params[:ship]
    board.save
    render json: board
  end

  private

  def board_params
    params.require(:board).permit(:user_id, :gameResult, :ammo, :status, :ship, :hits)
  end

end
