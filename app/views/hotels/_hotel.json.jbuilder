json.extract! hotel, :id, :nombre, :descripcion, :direccion, :telefono, :email, :fotos, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
