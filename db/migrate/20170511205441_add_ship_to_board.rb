class AddShipToBoard < ActiveRecord::Migration[5.1]
  def change
  	add_column :boards, :ship, :string, array: true
  end
end
