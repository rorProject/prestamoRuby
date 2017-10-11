class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :Nombre
      t.string :Apellido
      t.string :Direccion
      t.integer :Piso
      t.string :Numero
      t.string :Telefono
      t.string :Email
      t.timestamps
    end
  end
end
