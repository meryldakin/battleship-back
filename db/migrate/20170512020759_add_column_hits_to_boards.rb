class AddColumnHitsToBoards < ActiveRecord::Migration[5.1]
  def change
  	add_column :boards, :hits, :text, array: true, default: []
  end
end
