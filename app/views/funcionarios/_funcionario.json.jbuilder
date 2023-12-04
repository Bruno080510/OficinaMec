json.extract! funcionario, :id, :name, :endereco, :phone, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
