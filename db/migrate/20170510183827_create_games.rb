class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :status #won or lost
      t.timestamps
    end
  end
end
