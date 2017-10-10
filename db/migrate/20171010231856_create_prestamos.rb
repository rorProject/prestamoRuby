class CreatePrestamos < ActiveRecord::Migration[5.1]
  def change
    create_table :prestamos do |t|
      t.integer :Cantidad_a_prestar
      t.integer :Deuda
      t.integer :Cantidad_de_prestamos
      t.integer :Cuotas

      t.timestamps
    end
  end
end
