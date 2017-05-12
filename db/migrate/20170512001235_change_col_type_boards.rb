class ChangeColTypeBoards < ActiveRecord::Migration[5.1]
  def change
  	change_column :boards, :ship, :text, array: true, default: []
  end
end
