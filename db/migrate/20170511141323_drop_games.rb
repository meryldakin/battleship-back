class DropGames < ActiveRecord::Migration[5.1]
  def change
  	drop_table :games
  end
end
