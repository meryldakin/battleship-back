class RemoveGameId < ActiveRecord::Migration[5.1]
  def change
  	remove_column :boards, :game_id
  end
end
