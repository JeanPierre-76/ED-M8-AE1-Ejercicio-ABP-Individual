json.extract! contact, :id, :nombre, :correo, :comentarios, :created_at, :updated_at
json.url contact_url(contact, format: :json)
