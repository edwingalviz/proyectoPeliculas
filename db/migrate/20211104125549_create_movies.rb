class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :titulo
      t.string :sinopsis
      t.string :url
      t.datetime :estreno
      t.datetime :fin

      t.timestamps
    end
  end
end
