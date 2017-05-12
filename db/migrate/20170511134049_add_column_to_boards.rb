class AddColumnToBoards < ActiveRecord::Migration[5.1]
  def change
  	add_column :boards, :user_id, :integer
  	add_column :boards, :game_result, :integer
  	add_column :users, :password_digest, :string
  end
end
