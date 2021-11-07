class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :nombre
      t.string :cedula
      t.string :celular
      t.string :correo
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
