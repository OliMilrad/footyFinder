class AddIddtoBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :player, foreign_key: true
  end
end
