class SessionsController < ApplicationController

  def index
    if session[:user_id]
      redirect_to user_path(current_user)
    end
  end

  def create
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate(params[:password])
      board = Board.find_by(user_id: user.id, game_result: 0)
      binding.pry
      if !board
        board = Board.create(user_id: user.id, game_result: 0, ammo: 50)
        board.save
        render json: {user_id: user.id, board_id: board.id}
      else
        session[:user_id] = user.id
        session[:board_id] = board.id
        render json: {user_id: user.id, board_id: board.id} 
      end
    else
      render json: {error: "user not found"}
    end
  end

  def destroy
    session.clear
    redirect_to home_path
  end

end
