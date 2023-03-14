class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :full_name
      t.string :position
      t.string :nationality
      t.string :location
      t.float :height
      t.integer :age
      t.string :last_club
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
