class AddFechaReservationToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :fechaReserva, :datetime
  end
end
