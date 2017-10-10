json.extract! cliente, :id, :Nombre, :Apellido, :Direccion, :Piso, :Numero, :Telefono, :Email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
