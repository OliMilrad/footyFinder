class ChangeToInt < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date
    add_column :bookings, :date, :integer
  end
end
