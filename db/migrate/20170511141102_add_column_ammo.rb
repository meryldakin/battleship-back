class AddColumnAmmo < ActiveRecord::Migration[5.1]
  def change
  	add_column :boards, :ammo , :integer
  end
end
