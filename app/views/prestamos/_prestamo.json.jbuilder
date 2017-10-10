json.extract! prestamo, :id, :Cantidad_a_prestar, :Deuda, :Cantidad_de_prestamos, :Cuotas, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)
